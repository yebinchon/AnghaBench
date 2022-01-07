
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int QLC_BC_CFREE ;

__attribute__((used)) static inline bool qlcnic_sriov_channel_free_check(u32 val)
{
 return (val & (1 << QLC_BC_CFREE)) ? 1 : 0;
}
