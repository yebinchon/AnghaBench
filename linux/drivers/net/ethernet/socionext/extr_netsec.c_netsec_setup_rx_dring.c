
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct page_pool_params {int pool_size; int dma_dir; int dev; int nid; int flags; scalar_t__ order; int member_0; } ;
struct netsec_priv {int ndev; int dev; int xdp_prog; struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {struct netsec_desc* desc; int * page_pool; int xdp_rxq; } ;
struct netsec_desc {int len; void* addr; int dma_addr; } ;
struct bpf_prog {int dummy; } ;
typedef int dma_addr_t ;


 int DESC_NUM ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int MEM_TYPE_PAGE_POOL ;
 size_t NETSEC_RING_RX ;
 int PP_FLAG_DMA_MAP ;
 int PTR_ERR (int *) ;
 struct bpf_prog* READ_ONCE (int ) ;
 int cpu_to_node (int ) ;
 void* netsec_alloc_rx_data (struct netsec_priv*,int *,int *) ;
 int netsec_rx_fill (struct netsec_priv*,int ,int) ;
 int netsec_uninit_pkt_dring (struct netsec_priv*,size_t) ;
 int * page_pool_create (struct page_pool_params*) ;
 int xdp_rxq_info_reg (int *,int ,int ) ;
 int xdp_rxq_info_reg_mem_model (int *,int ,int *) ;

__attribute__((used)) static int netsec_setup_rx_dring(struct netsec_priv *priv)
{
 struct netsec_desc_ring *dring = &priv->desc_ring[NETSEC_RING_RX];
 struct bpf_prog *xdp_prog = READ_ONCE(priv->xdp_prog);
 struct page_pool_params pp_params = { 0 };
 int i, err;

 pp_params.order = 0;

 pp_params.flags = PP_FLAG_DMA_MAP;
 pp_params.pool_size = DESC_NUM;
 pp_params.nid = cpu_to_node(0);
 pp_params.dev = priv->dev;
 pp_params.dma_dir = xdp_prog ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;

 dring->page_pool = page_pool_create(&pp_params);
 if (IS_ERR(dring->page_pool)) {
  err = PTR_ERR(dring->page_pool);
  dring->page_pool = ((void*)0);
  goto err_out;
 }

 err = xdp_rxq_info_reg(&dring->xdp_rxq, priv->ndev, 0);
 if (err)
  goto err_out;

 err = xdp_rxq_info_reg_mem_model(&dring->xdp_rxq, MEM_TYPE_PAGE_POOL,
      dring->page_pool);
 if (err)
  goto err_out;

 for (i = 0; i < DESC_NUM; i++) {
  struct netsec_desc *desc = &dring->desc[i];
  dma_addr_t dma_handle;
  void *buf;
  u16 len;

  buf = netsec_alloc_rx_data(priv, &dma_handle, &len);

  if (!buf) {
   err = -ENOMEM;
   goto err_out;
  }
  desc->dma_addr = dma_handle;
  desc->addr = buf;
  desc->len = len;
 }

 netsec_rx_fill(priv, 0, DESC_NUM);

 return 0;

err_out:
 netsec_uninit_pkt_dring(priv, NETSEC_RING_RX);
 return err;
}
