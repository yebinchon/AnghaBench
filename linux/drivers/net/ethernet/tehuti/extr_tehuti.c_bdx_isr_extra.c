
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdx_priv {int ndev; int rxf_fifo0; } ;


 int DBG (char*) ;
 int IR_LNKCHG0 ;
 int IR_PCIE_LINK ;
 int IR_PCIE_TOUT ;
 int IR_RX_FREE_0 ;
 int bdx_link_changed (struct bdx_priv*) ;
 int bdx_rx_alloc_skbs (struct bdx_priv*,int *) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void bdx_isr_extra(struct bdx_priv *priv, u32 isr)
{
 if (isr & IR_RX_FREE_0) {
  bdx_rx_alloc_skbs(priv, &priv->rxf_fifo0);
  DBG("RX_FREE_0\n");
 }

 if (isr & IR_LNKCHG0)
  bdx_link_changed(priv);

 if (isr & IR_PCIE_LINK)
  netdev_err(priv->ndev, "PCI-E Link Fault\n");

 if (isr & IR_PCIE_TOUT)
  netdev_err(priv->ndev, "PCI-E Time Out\n");

}
