
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;


 int DECLARE_BITMAP (int ,int ) ;
 int EF10_STAT_COUNT ;
 int efx_ef10_get_stat_mask (struct efx_nic*,int ) ;
 int efx_ef10_stat_desc ;
 size_t efx_nic_describe_stats (int ,int ,int ,int *) ;
 int mask ;

__attribute__((used)) static size_t efx_ef10_describe_stats(struct efx_nic *efx, u8 *names)
{
 DECLARE_BITMAP(mask, EF10_STAT_COUNT);

 efx_ef10_get_stat_mask(efx, mask);
 return efx_nic_describe_stats(efx_ef10_stat_desc, EF10_STAT_COUNT,
          mask, names);
}
