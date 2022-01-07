
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int addr; scalar_t__ dma_addr; } ;
struct TYPE_4__ {int mode_support; int mdio_write; int mdio_read; } ;
struct efx_nic {int num_mac_stats; TYPE_2__ stats_buffer; int net_dev; TYPE_3__* phy_op; TYPE_1__ mdio; } ;
struct TYPE_6__ {int (* probe ) (struct efx_nic*) ;} ;


 int EFX_STATS_DISABLE ;
 int GFP_KERNEL ;
 int MDIO_EMULATE_C22 ;
 int MDIO_SUPPORTS_C45 ;
 int efx_mcdi_mac_stats (struct efx_nic*,int ,int) ;
 int efx_mcdi_mdio_read ;
 int efx_mcdi_mdio_write ;
 TYPE_3__ efx_mcdi_phy_ops ;
 int efx_nic_alloc_buffer (struct efx_nic*,TYPE_2__*,int,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,int ,int ) ;
 int probe ;
 int stub1 (struct efx_nic*) ;
 scalar_t__ virt_to_phys (int ) ;

int efx_mcdi_port_probe(struct efx_nic *efx)
{
 int rc;


 efx->phy_op = &efx_mcdi_phy_ops;


 efx->mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;
 efx->mdio.mdio_read = efx_mcdi_mdio_read;
 efx->mdio.mdio_write = efx_mcdi_mdio_write;


 rc = efx->phy_op->probe(efx);
 if (rc != 0)
  return rc;


 rc = efx_nic_alloc_buffer(efx, &efx->stats_buffer,
      efx->num_mac_stats * sizeof(u64), GFP_KERNEL);
 if (rc)
  return rc;
 netif_dbg(efx, probe, efx->net_dev,
    "stats buffer at %llx (virt %p phys %llx)\n",
    (u64)efx->stats_buffer.dma_addr,
    efx->stats_buffer.addr,
    (u64)virt_to_phys(efx->stats_buffer.addr));

 efx_mcdi_mac_stats(efx, EFX_STATS_DISABLE, 1);

 return 0;
}
