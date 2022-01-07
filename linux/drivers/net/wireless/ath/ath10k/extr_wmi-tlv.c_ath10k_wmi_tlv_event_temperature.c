
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_tlv_pdev_temperature_event {int temperature; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 scalar_t__ WARN_ON (int) ;
 int __le32_to_cpu (int ) ;
 int ath10k_thermal_event_temperature (struct ath10k*,int ) ;

__attribute__((used)) static int ath10k_wmi_tlv_event_temperature(struct ath10k *ar,
         struct sk_buff *skb)
{
 const struct wmi_tlv_pdev_temperature_event *ev;

 ev = (struct wmi_tlv_pdev_temperature_event *)skb->data;
 if (WARN_ON(skb->len < sizeof(*ev)))
  return -EPROTO;

 ath10k_thermal_event_temperature(ar, __le32_to_cpu(ev->temperature));
 return 0;
}
