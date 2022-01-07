
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_tx_meta_v2 {int dummy; } ;
struct wmi_tx_meta_v1 {int rate_plcy_id; int pkt_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int WMI_MAX_TX_META_SZ ;


 int memcpy (struct wmi_tx_meta_v2*,struct wmi_tx_meta_v2*,int) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int ath6kl_wmi_meta_add(struct wmi *wmi, struct sk_buff *skb,
          u8 *version, void *tx_meta_info)
{
 struct wmi_tx_meta_v1 *v1;
 struct wmi_tx_meta_v2 *v2;

 if (WARN_ON(skb == ((void*)0) || version == ((void*)0)))
  return -EINVAL;

 switch (*version) {
 case 129:
  skb_push(skb, WMI_MAX_TX_META_SZ);
  v1 = (struct wmi_tx_meta_v1 *) skb->data;
  v1->pkt_id = 0;
  v1->rate_plcy_id = 0;
  *version = 129;
  break;
 case 128:
  skb_push(skb, WMI_MAX_TX_META_SZ);
  v2 = (struct wmi_tx_meta_v2 *) skb->data;
  memcpy(v2, (struct wmi_tx_meta_v2 *) tx_meta_info,
         sizeof(struct wmi_tx_meta_v2));
  break;
 }

 return 0;
}
