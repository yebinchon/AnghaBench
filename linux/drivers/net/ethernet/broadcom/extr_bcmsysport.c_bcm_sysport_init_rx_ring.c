
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_priv {int num_rx_bds; int num_rx_desc_words; scalar_t__ rx_bds; int netdev; struct bcm_sysport_cb* rx_cbs; scalar_t__ rx_read_ptr; scalar_t__ rx_c_index; scalar_t__ base; } ;
struct bcm_sysport_cb {scalar_t__ bd_addr; } ;


 int DESC_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RDMA_CONS_INDEX ;
 int RDMA_DISABLED ;
 int RDMA_END_ADDR_HI ;
 int RDMA_END_ADDR_LO ;
 int RDMA_PROD_INDEX ;
 int RDMA_RING_BUF_SIZE ;
 int RDMA_RING_SIZE_SHIFT ;
 int RDMA_START_ADDR_HI ;
 int RDMA_START_ADDR_LO ;
 int RDMA_STATUS ;
 int RDMA_WRITE_PTR_HI ;
 int RDMA_WRITE_PTR_LO ;
 int RX_BUF_LENGTH ;
 scalar_t__ SYS_PORT_RDMA_OFFSET ;
 int WORDS_PER_DESC ;
 int bcm_sysport_alloc_rx_bufs (struct bcm_sysport_priv*) ;
 int hw ;
 struct bcm_sysport_cb* kcalloc (int,int,int ) ;
 int netif_dbg (struct bcm_sysport_priv*,int ,int ,char*,int,scalar_t__) ;
 int netif_err (struct bcm_sysport_priv*,int ,int ,char*) ;
 int rdma_enable_set (struct bcm_sysport_priv*,int ) ;
 int rdma_readl (struct bcm_sysport_priv*,int ) ;
 int rdma_writel (struct bcm_sysport_priv*,int,int ) ;

__attribute__((used)) static int bcm_sysport_init_rx_ring(struct bcm_sysport_priv *priv)
{
 struct bcm_sysport_cb *cb;
 u32 reg;
 int ret;
 int i;


 priv->num_rx_bds = priv->num_rx_desc_words / WORDS_PER_DESC;
 priv->rx_bds = priv->base + SYS_PORT_RDMA_OFFSET;
 priv->rx_c_index = 0;
 priv->rx_read_ptr = 0;
 priv->rx_cbs = kcalloc(priv->num_rx_bds, sizeof(struct bcm_sysport_cb),
    GFP_KERNEL);
 if (!priv->rx_cbs) {
  netif_err(priv, hw, priv->netdev, "CB allocation failed\n");
  return -ENOMEM;
 }

 for (i = 0; i < priv->num_rx_bds; i++) {
  cb = priv->rx_cbs + i;
  cb->bd_addr = priv->rx_bds + i * DESC_SIZE;
 }

 ret = bcm_sysport_alloc_rx_bufs(priv);
 if (ret) {
  netif_err(priv, hw, priv->netdev, "SKB allocation failed\n");
  return ret;
 }


 reg = rdma_readl(priv, RDMA_STATUS);
 if (!(reg & RDMA_DISABLED))
  rdma_enable_set(priv, 0);

 rdma_writel(priv, 0, RDMA_WRITE_PTR_LO);
 rdma_writel(priv, 0, RDMA_WRITE_PTR_HI);
 rdma_writel(priv, 0, RDMA_PROD_INDEX);
 rdma_writel(priv, 0, RDMA_CONS_INDEX);
 rdma_writel(priv, priv->num_rx_bds << RDMA_RING_SIZE_SHIFT |
     RX_BUF_LENGTH, RDMA_RING_BUF_SIZE);

 rdma_writel(priv, 0, RDMA_START_ADDR_HI);
 rdma_writel(priv, 0, RDMA_START_ADDR_LO);
 rdma_writel(priv, 0, RDMA_END_ADDR_HI);
 rdma_writel(priv, priv->num_rx_desc_words - 1, RDMA_END_ADDR_LO);

 netif_dbg(priv, hw, priv->netdev,
    "RDMA cfg, num_rx_bds=%d, rx_bds=%p\n",
    priv->num_rx_bds, priv->rx_bds);

 return 0;
}
