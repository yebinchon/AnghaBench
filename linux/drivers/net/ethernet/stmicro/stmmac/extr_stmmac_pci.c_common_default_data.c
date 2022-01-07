
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct plat_stmmacenet_data {int clk_csr; int has_gmac; int force_sf_dma_mode; int unicast_filter_entries; int tx_queues_to_use; int rx_queues_to_use; TYPE_3__* rx_queues_cfg; TYPE_2__* tx_queues_cfg; int maxmtu; int multicast_filter_bins; TYPE_1__* mdio_bus_data; } ;
struct TYPE_6__ {int use_prio; int pkt_route; } ;
struct TYPE_5__ {int use_prio; } ;
struct TYPE_4__ {int needs_reset; scalar_t__ phy_mask; } ;


 int HASH_TABLE_SIZE ;
 int JUMBO_LEN ;

__attribute__((used)) static void common_default_data(struct plat_stmmacenet_data *plat)
{
 plat->clk_csr = 2;
 plat->has_gmac = 1;
 plat->force_sf_dma_mode = 1;

 plat->mdio_bus_data->needs_reset = 1;
 plat->mdio_bus_data->phy_mask = 0;


 plat->multicast_filter_bins = HASH_TABLE_SIZE;


 plat->unicast_filter_entries = 1;


 plat->maxmtu = JUMBO_LEN;


 plat->tx_queues_to_use = 1;
 plat->rx_queues_to_use = 1;


 plat->tx_queues_cfg[0].use_prio = 0;
 plat->rx_queues_cfg[0].use_prio = 0;


 plat->rx_queues_cfg[0].pkt_route = 0x0;
}
