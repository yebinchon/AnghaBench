
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_dp {int rx_dma_dir; scalar_t__ fl_bufsz; int dev; } ;
typedef int dma_addr_t ;


 scalar_t__ NFP_NET_RX_BUF_NON_DATA ;
 int dma_sync_single_for_device (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
nfp_net_dma_sync_dev_rx(const struct nfp_net_dp *dp, dma_addr_t dma_addr)
{
 dma_sync_single_for_device(dp->dev, dma_addr,
       dp->fl_bufsz - NFP_NET_RX_BUF_NON_DATA,
       dp->rx_dma_dir);
}
