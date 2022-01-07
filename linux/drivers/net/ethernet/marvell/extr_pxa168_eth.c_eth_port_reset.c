
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int dummy; } ;
struct net_device {int phydev; } ;


 int INT_CAUSE ;
 int INT_MASK ;
 unsigned int PCR_EN ;
 int PORT_CONFIG ;
 int SDMA_CMD ;
 unsigned int SDMA_CMD_ERD ;
 int abort_dma (struct pxa168_eth_private*) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int phy_stop (int ) ;
 unsigned int rdl (struct pxa168_eth_private*,int ) ;
 int wrl (struct pxa168_eth_private*,int ,unsigned int) ;

__attribute__((used)) static void eth_port_reset(struct net_device *dev)
{
 struct pxa168_eth_private *pep = netdev_priv(dev);
 unsigned int val = 0;


 wrl(pep, INT_MASK, 0);


 wrl(pep, INT_CAUSE, 0);


 val = rdl(pep, SDMA_CMD);
 val &= ~SDMA_CMD_ERD;




 abort_dma(pep);


 val = rdl(pep, PORT_CONFIG);
 val &= ~PCR_EN;
 wrl(pep, PORT_CONFIG, val);

 phy_stop(dev->phydev);
}
