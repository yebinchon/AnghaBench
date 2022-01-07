
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfp_net_dp {int xdp_prog; int dev; int fl_bufsz; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 struct page* alloc_page (int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 void* netdev_alloc_frag (int ) ;
 int nfp_net_dma_map_rx (struct nfp_net_dp*,void*) ;
 int nfp_net_free_frag (void*,int ) ;
 int nn_dp_warn (struct nfp_net_dp*,char*) ;
 int * page_address (struct page*) ;

__attribute__((used)) static void *nfp_net_rx_alloc_one(struct nfp_net_dp *dp, dma_addr_t *dma_addr)
{
 void *frag;

 if (!dp->xdp_prog) {
  frag = netdev_alloc_frag(dp->fl_bufsz);
 } else {
  struct page *page;

  page = alloc_page(GFP_KERNEL);
  frag = page ? page_address(page) : ((void*)0);
 }
 if (!frag) {
  nn_dp_warn(dp, "Failed to alloc receive page frag\n");
  return ((void*)0);
 }

 *dma_addr = nfp_net_dma_map_rx(dp, frag);
 if (dma_mapping_error(dp->dev, *dma_addr)) {
  nfp_net_free_frag(frag, dp->xdp_prog);
  nn_dp_warn(dp, "Failed to map DMA RX buffer\n");
  return ((void*)0);
 }

 return frag;
}
