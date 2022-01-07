
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_wmi_tlv_iter (struct ath10k*,void const*,size_t,int ,void*) ;
 int ath10k_wmi_tlv_iter_parse ;

__attribute__((used)) static int ath10k_wmi_tlv_parse(struct ath10k *ar, const void **tb,
    const void *ptr, size_t len)
{
 return ath10k_wmi_tlv_iter(ar, ptr, len, ath10k_wmi_tlv_iter_parse,
       (void *)tb);
}
