
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;


 int SIENA_STAT_COUNT ;
 size_t efx_nic_describe_stats (int ,int ,int ,int *) ;
 int siena_stat_desc ;
 int siena_stat_mask ;

__attribute__((used)) static size_t siena_describe_nic_stats(struct efx_nic *efx, u8 *names)
{
 return efx_nic_describe_stats(siena_stat_desc, SIENA_STAT_COUNT,
          siena_stat_mask, names);
}
