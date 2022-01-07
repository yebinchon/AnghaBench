
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;
typedef int s64 ;


 unsigned long long NS_TO_S27_MULT ;
 int NS_TO_S27_SHIFT ;
 scalar_t__ S27_MINOR_MAX ;
 struct timespec64 ns_to_timespec64 (int ) ;

__attribute__((used)) static void efx_ptp_ns_to_s27(s64 ns, u32 *nic_major, u32 *nic_minor)
{
 struct timespec64 ts = ns_to_timespec64(ns);
 u32 maj = (u32)ts.tv_sec;
 u32 min = (u32)(((u64)ts.tv_nsec * NS_TO_S27_MULT +
    (1ULL << (NS_TO_S27_SHIFT - 1))) >> NS_TO_S27_SHIFT);




 if (min >= S27_MINOR_MAX) {
  min -= S27_MINOR_MAX;
  maj++;
 }

 *nic_major = maj;
 *nic_minor = min;
}
