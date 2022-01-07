
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int s64 ;


 struct timespec64 ns_to_timespec64 (int ) ;

__attribute__((used)) static void efx_ptp_ns_to_s_qns(s64 ns, u32 *nic_major, u32 *nic_minor)
{
 struct timespec64 ts = ns_to_timespec64(ns);

 *nic_major = (u32)ts.tv_sec;
 *nic_minor = ts.tv_nsec * 4;
}
