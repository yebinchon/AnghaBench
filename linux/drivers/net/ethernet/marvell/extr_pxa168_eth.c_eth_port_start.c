
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct pxa168_eth_private {int tx_curr_desc_q; int rx_curr_desc_q; scalar_t__ rx_desc_dma; scalar_t__ tx_desc_dma; } ;
struct net_device {int phydev; } ;


 unsigned int ALL_INTS ;
 int ETH_C_RX_DESC_0 ;
 int ETH_C_TX_DESC_1 ;
 int ETH_F_RX_DESC_0 ;
 int INT_CAUSE ;
 int INT_MASK ;
 unsigned int PCR_EN ;
 int PORT_CONFIG ;
 int SDMA_CMD ;
 unsigned int SDMA_CMD_ERD ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int phy_start (int ) ;
 unsigned int rdl (struct pxa168_eth_private*,int ) ;
 int wrl (struct pxa168_eth_private*,int ,unsigned int) ;

__attribute__((used)) static void eth_port_start(struct net_device *dev)
{
 unsigned int val = 0;
 struct pxa168_eth_private *pep = netdev_priv(dev);
 int tx_curr_desc, rx_curr_desc;

 phy_start(dev->phydev);


 tx_curr_desc = pep->tx_curr_desc_q;
 wrl(pep, ETH_C_TX_DESC_1,
     (u32) (pep->tx_desc_dma + tx_curr_desc * sizeof(struct tx_desc)));


 rx_curr_desc = pep->rx_curr_desc_q;
 wrl(pep, ETH_C_RX_DESC_0,
     (u32) (pep->rx_desc_dma + rx_curr_desc * sizeof(struct rx_desc)));

 wrl(pep, ETH_F_RX_DESC_0,
     (u32) (pep->rx_desc_dma + rx_curr_desc * sizeof(struct rx_desc)));


 wrl(pep, INT_CAUSE, 0);


 wrl(pep, INT_MASK, ALL_INTS);

 val = rdl(pep, PORT_CONFIG);
 val |= PCR_EN;
 wrl(pep, PORT_CONFIG, val);


 val = rdl(pep, SDMA_CMD);
 val |= SDMA_CMD_ERD;
 wrl(pep, SDMA_CMD, val);
}
