
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int USEC_PER_MSEC ;

u8 iwl_mvm_tcm_load_percentage(u32 airtime, u32 elapsed)
{
 if (!elapsed)
  return 0;

 return (100 * airtime / elapsed) / USEC_PER_MSEC;
}
