
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_nic {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int dummy_rx_push_rss_config(struct ef4_nic *efx, bool user,
        const u32 *rx_indir_table)
{
 (void) efx;
 (void) user;
 (void) rx_indir_table;
 return -ENOSYS;
}
