
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct plat_stmmacenet_data {int clk_csr; int has_gmac4; int force_sf_dma_mode; int tso_en; int pmt; int unicast_filter_entries; int tx_queues_to_use; int rx_queues_to_use; int bus_id; int phy_addr; TYPE_5__* axi; TYPE_4__* dma_cfg; int interface; TYPE_3__* rx_queues_cfg; int rx_sched_algorithm; TYPE_2__* tx_queues_cfg; int tx_sched_algorithm; int maxmtu; int multicast_filter_bins; TYPE_1__* mdio_bus_data; } ;
struct pci_dev {int dev; } ;
struct TYPE_10__ {int axi_wr_osr_lmt; int axi_rd_osr_lmt; int axi_fb; int* axi_blen; } ;
struct TYPE_9__ {int pbl; int pblx8; } ;
struct TYPE_8__ {int use_prio; int pkt_route; int chan; void* mode_to_use; } ;
struct TYPE_7__ {int use_prio; int weight; void* mode_to_use; } ;
struct TYPE_6__ {scalar_t__ phy_mask; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_TABLE_SIZE ;
 int JUMBO_LEN ;
 void* MTL_QUEUE_DCB ;
 int MTL_RX_ALGORITHM_SP ;
 int MTL_TX_ALGORITHM_WRR ;
 int PHY_INTERFACE_MODE_GMII ;
 TYPE_5__* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int snps_gmac5_default_data(struct pci_dev *pdev,
       struct plat_stmmacenet_data *plat)
{
 int i;

 plat->clk_csr = 5;
 plat->has_gmac4 = 1;
 plat->force_sf_dma_mode = 1;
 plat->tso_en = 1;
 plat->pmt = 1;

 plat->mdio_bus_data->phy_mask = 0;


 plat->multicast_filter_bins = HASH_TABLE_SIZE;


 plat->unicast_filter_entries = 1;


 plat->maxmtu = JUMBO_LEN;


 plat->tx_queues_to_use = 4;
 plat->rx_queues_to_use = 4;

 plat->tx_sched_algorithm = MTL_TX_ALGORITHM_WRR;
 for (i = 0; i < plat->tx_queues_to_use; i++) {
  plat->tx_queues_cfg[i].use_prio = 0;
  plat->tx_queues_cfg[i].mode_to_use = MTL_QUEUE_DCB;
  plat->tx_queues_cfg[i].weight = 25;
 }

 plat->rx_sched_algorithm = MTL_RX_ALGORITHM_SP;
 for (i = 0; i < plat->rx_queues_to_use; i++) {
  plat->rx_queues_cfg[i].use_prio = 0;
  plat->rx_queues_cfg[i].mode_to_use = MTL_QUEUE_DCB;
  plat->rx_queues_cfg[i].pkt_route = 0x0;
  plat->rx_queues_cfg[i].chan = i;
 }

 plat->bus_id = 1;
 plat->phy_addr = -1;
 plat->interface = PHY_INTERFACE_MODE_GMII;

 plat->dma_cfg->pbl = 32;
 plat->dma_cfg->pblx8 = 1;


 plat->axi = devm_kzalloc(&pdev->dev, sizeof(*plat->axi), GFP_KERNEL);
 if (!plat->axi)
  return -ENOMEM;

 plat->axi->axi_wr_osr_lmt = 31;
 plat->axi->axi_rd_osr_lmt = 31;

 plat->axi->axi_fb = 0;
 plat->axi->axi_blen[0] = 4;
 plat->axi->axi_blen[1] = 8;
 plat->axi->axi_blen[2] = 16;
 plat->axi->axi_blen[3] = 32;

 return 0;
}
