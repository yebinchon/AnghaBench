
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_ring {int dummy; } ;
struct xlgmac_pdata {int netdev; } ;
struct xlgmac_dma_desc {int desc3; int desc2; int desc1; int desc0; } ;
struct xlgmac_desc_data {int dma_desc_addr; struct xlgmac_dma_desc* dma_desc; } ;


 struct xlgmac_desc_data* XLGMAC_GET_DESC_DATA (struct xlgmac_ring*,unsigned int) ;
 int le32_to_cpu (int ) ;
 int netdev_dbg (int ,char*,...) ;

void xlgmac_dump_rx_desc(struct xlgmac_pdata *pdata,
    struct xlgmac_ring *ring,
    unsigned int idx)
{
 struct xlgmac_desc_data *desc_data;
 struct xlgmac_dma_desc *dma_desc;

 desc_data = XLGMAC_GET_DESC_DATA(ring, idx);
 dma_desc = desc_data->dma_desc;

 netdev_dbg(pdata->netdev, "RX: dma_desc=%p, dma_desc_addr=%pad\n",
     desc_data->dma_desc, &desc_data->dma_desc_addr);
 netdev_dbg(pdata->netdev,
     "RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\n",
     idx,
     le32_to_cpu(dma_desc->desc0),
     le32_to_cpu(dma_desc->desc1),
     le32_to_cpu(dma_desc->desc2),
     le32_to_cpu(dma_desc->desc3));
}
