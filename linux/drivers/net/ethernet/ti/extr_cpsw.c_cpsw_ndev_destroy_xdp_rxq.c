
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_rxq_info {int dummy; } ;
struct cpsw_priv {struct xdp_rxq_info* xdp_rxq; } ;


 int xdp_rxq_info_is_reg (struct xdp_rxq_info*) ;
 int xdp_rxq_info_unreg (struct xdp_rxq_info*) ;

__attribute__((used)) static void cpsw_ndev_destroy_xdp_rxq(struct cpsw_priv *priv, int ch)
{
 struct xdp_rxq_info *rxq = &priv->xdp_rxq[ch];

 if (!xdp_rxq_info_is_reg(rxq))
  return;

 xdp_rxq_info_unreg(rxq);
}
