
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ s32 ;
typedef int ktime_t ;


 int ktime_add_ns (int ,int ) ;
 int ktime_set (int ,int ) ;
 int ktime_sub_ns (int ,int ) ;

__attribute__((used)) static ktime_t efx_ptp_s_ns_to_ktime_correction(u32 nic_major, u32 nic_minor,
      s32 correction)
{
 ktime_t kt = ktime_set(nic_major, nic_minor);
 if (correction >= 0)
  kt = ktime_add_ns(kt, (u64)correction);
 else
  kt = ktime_sub_ns(kt, (u64)-correction);
 return kt;
}
