
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfp_net_dp {int xdp_prog; int dev; int fl_bufsz; } ;
typedef int dma_addr_t ;


 struct page* dev_alloc_page () ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 void* napi_alloc_frag (int ) ;
 int nfp_net_dma_map_rx (struct nfp_net_dp*,void*) ;
 int nfp_net_free_frag (void*,int ) ;
 int nn_dp_warn (struct nfp_net_dp*,char*) ;
 void* page_address (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *nfp_net_napi_alloc_one(struct nfp_net_dp *dp, dma_addr_t *dma_addr)
{
 void *frag;

 if (!dp->xdp_prog) {
  frag = napi_alloc_frag(dp->fl_bufsz);
  if (unlikely(!frag))
   return ((void*)0);
 } else {
  struct page *page;

  page = dev_alloc_page();
  if (unlikely(!page))
   return ((void*)0);
  frag = page_address(page);
 }

 *dma_addr = nfp_net_dma_map_rx(dp, frag);
 if (dma_mapping_error(dp->dev, *dma_addr)) {
  nfp_net_free_frag(frag, dp->xdp_prog);
  nn_dp_warn(dp, "Failed to map DMA RX buffer\n");
  return ((void*)0);
 }

 return frag;
}
