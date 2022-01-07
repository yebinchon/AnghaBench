
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u8 qlcnic_sriov_target_func_id(u32 val)
{
 return (val >> 4) & 0xff;
}
