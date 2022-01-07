
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_rxq_info {int dummy; } ;
struct page_pool {int dummy; } ;
struct cpsw_priv {int ndev; struct xdp_rxq_info* xdp_rxq; struct cpsw_common* cpsw; } ;
struct cpsw_common {struct page_pool** page_pool; } ;


 int MEM_TYPE_PAGE_POOL ;
 int xdp_rxq_info_reg (struct xdp_rxq_info*,int ,int) ;
 int xdp_rxq_info_reg_mem_model (struct xdp_rxq_info*,int ,struct page_pool*) ;
 int xdp_rxq_info_unreg (struct xdp_rxq_info*) ;

__attribute__((used)) static int cpsw_ndev_create_xdp_rxq(struct cpsw_priv *priv, int ch)
{
 struct cpsw_common *cpsw = priv->cpsw;
 struct xdp_rxq_info *rxq;
 struct page_pool *pool;
 int ret;

 pool = cpsw->page_pool[ch];
 rxq = &priv->xdp_rxq[ch];

 ret = xdp_rxq_info_reg(rxq, priv->ndev, ch);
 if (ret)
  return ret;

 ret = xdp_rxq_info_reg_mem_model(rxq, MEM_TYPE_PAGE_POOL, pool);
 if (ret)
  xdp_rxq_info_unreg(rxq);

 return ret;
}
