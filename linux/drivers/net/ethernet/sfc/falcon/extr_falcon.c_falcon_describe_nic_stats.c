
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ef4_nic {int dummy; } ;


 int FALCON_STAT_COUNT ;
 size_t ef4_nic_describe_stats (int ,int ,int ,int *) ;
 int falcon_stat_desc ;
 int falcon_stat_mask ;

__attribute__((used)) static size_t falcon_describe_nic_stats(struct ef4_nic *efx, u8 *names)
{
 return ef4_nic_describe_stats(falcon_stat_desc, FALCON_STAT_COUNT,
          falcon_stat_mask, names);
}
