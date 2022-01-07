
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_dp {int rx_dma_dir; int dev; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ NFP_NET_RX_BUF_HEADROOM ;
 int dma_sync_single_for_cpu (int ,scalar_t__,unsigned int,int ) ;

__attribute__((used)) static void nfp_net_dma_sync_cpu_rx(struct nfp_net_dp *dp, dma_addr_t dma_addr,
        unsigned int len)
{
 dma_sync_single_for_cpu(dp->dev, dma_addr - NFP_NET_RX_BUF_HEADROOM,
    len, dp->rx_dma_dir);
}
