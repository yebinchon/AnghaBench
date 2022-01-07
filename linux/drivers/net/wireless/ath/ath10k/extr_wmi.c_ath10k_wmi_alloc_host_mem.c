
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath10k {int dummy; } ;


 int ath10k_wmi_alloc_chunk (struct ath10k*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ath10k_wmi_alloc_host_mem(struct ath10k *ar, u32 req_id,
         u32 num_units, u32 unit_len)
{
 int ret;

 while (num_units) {
  ret = ath10k_wmi_alloc_chunk(ar, req_id, num_units, unit_len);
  if (ret < 0)
   return ret;

  num_units -= ret;
 }

 return 0;
}
