
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ath10k {int dummy; } ;


 size_t WMI_TLV_TAG_MAX ;

__attribute__((used)) static int ath10k_wmi_tlv_iter_parse(struct ath10k *ar, u16 tag, u16 len,
         const void *ptr, void *data)
{
 const void **tb = data;

 if (tag < WMI_TLV_TAG_MAX)
  tb[tag] = ptr;

 return 0;
}
