
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int rss_spread; int * rx_indir_table; } ;


 size_t ARRAY_SIZE (int *) ;
 int ethtool_rxfh_indir_default (size_t,int ) ;

void ef4_set_default_rx_indir_table(struct ef4_nic *efx)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(efx->rx_indir_table); i++)
  efx->rx_indir_table[i] =
   ethtool_rxfh_indir_default(i, efx->rss_spread);
}
