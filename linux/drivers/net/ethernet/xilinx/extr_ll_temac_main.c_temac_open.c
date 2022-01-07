
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dev; int tx_irq; int rx_irq; int phy_interface; int phy_name; int ndev; scalar_t__ phy_node; } ;
struct phy_device {int dummy; } ;
struct net_device {int name; int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PTR_ERR (struct phy_device*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int ,char*) ;
 int free_irq (int ,struct net_device*) ;
 int ll_temac_rx_irq ;
 int ll_temac_tx_irq ;
 struct temac_local* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (int ,scalar_t__,int ,int ,int ) ;
 struct phy_device* phy_connect (int ,int ,int ,int ) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_start (struct phy_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 scalar_t__ strlen (int ) ;
 int temac_adjust_link ;
 int temac_device_reset (struct net_device*) ;

__attribute__((used)) static int temac_open(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct phy_device *phydev = ((void*)0);
 int rc;

 dev_dbg(&ndev->dev, "temac_open()\n");

 if (lp->phy_node) {
  phydev = of_phy_connect(lp->ndev, lp->phy_node,
     temac_adjust_link, 0, 0);
  if (!phydev) {
   dev_err(lp->dev, "of_phy_connect() failed\n");
   return -ENODEV;
  }
  phy_start(phydev);
 } else if (strlen(lp->phy_name) > 0) {
  phydev = phy_connect(lp->ndev, lp->phy_name, temac_adjust_link,
         lp->phy_interface);
  if (IS_ERR(phydev)) {
   dev_err(lp->dev, "phy_connect() failed\n");
   return PTR_ERR(phydev);
  }
  phy_start(phydev);
 }

 temac_device_reset(ndev);

 rc = request_irq(lp->tx_irq, ll_temac_tx_irq, 0, ndev->name, ndev);
 if (rc)
  goto err_tx_irq;
 rc = request_irq(lp->rx_irq, ll_temac_rx_irq, 0, ndev->name, ndev);
 if (rc)
  goto err_rx_irq;

 return 0;

 err_rx_irq:
 free_irq(lp->tx_irq, ndev);
 err_tx_irq:
 if (phydev)
  phy_disconnect(phydev);
 dev_err(lp->dev, "request_irq() failed\n");
 return rc;
}
