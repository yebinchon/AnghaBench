
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_sync_cmd {int data_sync_map; } ;
struct wmi_data_sync_bufs {int traffic_class; int * skb; } ;
struct wmi {int fat_pipe_exist; int parent_dev; int lock; } ;
struct sk_buff {scalar_t__ data; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
typedef int data_sync_bufs ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 scalar_t__ WARN_ON (int) ;
 int WMI_SYNCHRONIZE_CMDID ;
 int WMM_NUM_AC ;
 int ath6kl_ac2_endpoint_id (int ,int) ;
 int * ath6kl_buf_alloc (int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int,struct sk_buff*,int ,int ) ;
 int ath6kl_wmi_data_sync_send (struct wmi*,int *,int,int) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memset (struct wmi_data_sync_bufs*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath6kl_wmi_sync_point(struct wmi *wmi, u8 if_idx)
{
 struct sk_buff *skb;
 struct wmi_sync_cmd *cmd;
 struct wmi_data_sync_bufs data_sync_bufs[WMM_NUM_AC];
 enum htc_endpoint_id ep_id;
 u8 index, num_pri_streams = 0;
 int ret = 0;

 memset(data_sync_bufs, 0, sizeof(data_sync_bufs));

 spin_lock_bh(&wmi->lock);

 for (index = 0; index < WMM_NUM_AC; index++) {
  if (wmi->fat_pipe_exist & (1 << index)) {
   num_pri_streams++;
   data_sync_bufs[num_pri_streams - 1].traffic_class =
       index;
  }
 }

 spin_unlock_bh(&wmi->lock);

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_sync_cmd *) skb->data;





 cmd->data_sync_map = wmi->fat_pipe_exist;

 for (index = 0; index < num_pri_streams; index++) {
  data_sync_bufs[index].skb = ath6kl_buf_alloc(0);
  if (data_sync_bufs[index].skb == ((void*)0)) {
   ret = -ENOMEM;
   break;
  }
 }





 if (ret)
  goto free_cmd_skb;





 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SYNCHRONIZE_CMDID,
      NO_SYNC_WMIFLAG);

 if (ret)
  goto free_data_skb;

 for (index = 0; index < num_pri_streams; index++) {
  if (WARN_ON(!data_sync_bufs[index].skb))
   goto free_data_skb;

  ep_id = ath6kl_ac2_endpoint_id(wmi->parent_dev,
            data_sync_bufs[index].
            traffic_class);
  ret =
      ath6kl_wmi_data_sync_send(wmi, data_sync_bufs[index].skb,
           ep_id, if_idx);

  data_sync_bufs[index].skb = ((void*)0);

  if (ret)
   goto free_data_skb;
 }

 return 0;

free_cmd_skb:

 dev_kfree_skb(skb);

free_data_skb:
 for (index = 0; index < num_pri_streams; index++)
  dev_kfree_skb((struct sk_buff *)data_sync_bufs[index].skb);

 return ret;
}
