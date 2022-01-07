
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int vdev_delete_done; } ;


 int ATH10K_DBG_WMI ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int complete (int *) ;

__attribute__((used)) static void ath10k_wmi_tlv_event_vdev_delete_resp(struct ath10k *ar,
        struct sk_buff *skb)
{
 ath10k_dbg(ar, ATH10K_DBG_WMI, "WMI_VDEV_DELETE_RESP_EVENTID\n");
 complete(&ar->vdev_delete_done);
}
