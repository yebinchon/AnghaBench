
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_tlv_swba_parse {int tim_done; int noa_done; void const* ev; } ;
struct ath10k {int dummy; } ;




 int ath10k_wmi_tlv_iter (struct ath10k*,void const*,int,int ,struct wmi_tlv_swba_parse*) ;
 int ath10k_wmi_tlv_swba_noa_parse ;
 int ath10k_wmi_tlv_swba_tim_parse ;

__attribute__((used)) static int ath10k_wmi_tlv_swba_parse(struct ath10k *ar, u16 tag, u16 len,
         const void *ptr, void *data)
{
 struct wmi_tlv_swba_parse *swba = data;
 int ret;

 switch (tag) {
 case 128:
  swba->ev = ptr;
  break;
 case 129:
  if (!swba->tim_done) {
   swba->tim_done = 1;
   ret = ath10k_wmi_tlv_iter(ar, ptr, len,
        ath10k_wmi_tlv_swba_tim_parse,
        swba);
   if (ret)
    return ret;
  } else if (!swba->noa_done) {
   swba->noa_done = 1;
   ret = ath10k_wmi_tlv_iter(ar, ptr, len,
        ath10k_wmi_tlv_swba_noa_parse,
        swba);
   if (ret)
    return ret;
  }
  break;
 default:
  break;
 }
 return 0;
}
