
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
typedef int ktime_t ;


 unsigned long long NSEC_PER_SEC ;
 int S27_TO_NS_SHIFT ;
 int ktime_set (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline ktime_t efx_ptp_s27_to_ktime(u32 nic_major, u32 nic_minor)
{
 u32 ns = (u32)(((u64)nic_minor * NSEC_PER_SEC +
   (1ULL << (S27_TO_NS_SHIFT - 1))) >> S27_TO_NS_SHIFT);
 return ktime_set(nic_major, ns);
}
