
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;
typedef int ktime_t ;


 scalar_t__ S27_MINOR_MAX ;
 int efx_ptp_s27_to_ktime (scalar_t__,scalar_t__) ;

__attribute__((used)) static ktime_t efx_ptp_s27_to_ktime_correction(u32 nic_major, u32 nic_minor,
            s32 correction)
{

 nic_minor += correction;
 if ((s32)nic_minor < 0) {
  nic_minor += S27_MINOR_MAX;
  nic_major--;
 } else if (nic_minor >= S27_MINOR_MAX) {
  nic_minor -= S27_MINOR_MAX;
  nic_major++;
 }

 return efx_ptp_s27_to_ktime(nic_major, nic_minor);
}
