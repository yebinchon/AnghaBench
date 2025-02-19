
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmi_tlv_swba_parse {size_t n_tim; size_t n_noa; TYPE_1__* ev; struct wmi_swba_ev_arg* arg; } ;
struct wmi_swba_ev_arg {int vdev_map; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int vdev_map; } ;


 int BIT (int ) ;
 int EPROTO ;
 int __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_tlv_iter (struct ath10k*,int ,int ,int ,struct wmi_tlv_swba_parse*) ;
 int ath10k_wmi_tlv_swba_parse ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_swba_ev(struct ath10k *ar,
       struct sk_buff *skb,
       struct wmi_swba_ev_arg *arg)
{
 struct wmi_tlv_swba_parse swba = { .arg = arg };
 u32 map;
 size_t n_vdevs;
 int ret;

 ret = ath10k_wmi_tlv_iter(ar, skb->data, skb->len,
      ath10k_wmi_tlv_swba_parse, &swba);
 if (ret) {
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 if (!swba.ev)
  return -EPROTO;

 arg->vdev_map = swba.ev->vdev_map;

 for (map = __le32_to_cpu(arg->vdev_map), n_vdevs = 0; map; map >>= 1)
  if (map & BIT(0))
   n_vdevs++;

 if (n_vdevs != swba.n_tim ||
     n_vdevs != swba.n_noa)
  return -EPROTO;

 return 0;
}
