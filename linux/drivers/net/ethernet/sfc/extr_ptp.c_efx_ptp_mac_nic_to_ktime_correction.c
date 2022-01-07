
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct efx_ptp_data {TYPE_1__ (* nic_to_kernel_time ) (int,int,int ) ;} ;
struct efx_nic {int dummy; } ;
typedef int s32 ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ ktime_t ;


 int WARN_ON_ONCE (int) ;
 int last_sync_timestamp_major (struct efx_nic*) ;
 TYPE_1__ stub1 (int,int,int ) ;

__attribute__((used)) static ktime_t
efx_ptp_mac_nic_to_ktime_correction(struct efx_nic *efx,
        struct efx_ptp_data *ptp,
        u32 nic_major, u32 nic_minor,
        s32 correction)
{
 ktime_t kt = { 0 };

 if (!(nic_major & 0x80000000)) {
  WARN_ON_ONCE(nic_major >> 16);

  nic_major &= 0xffff;
  nic_major |= (last_sync_timestamp_major(efx) & 0xffff0000);

  kt = ptp->nic_to_kernel_time(nic_major, nic_minor,
          correction);
 }
 return kt;
}
