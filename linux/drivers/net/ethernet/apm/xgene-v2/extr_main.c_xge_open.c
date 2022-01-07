
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int napi; } ;
struct net_device {int phydev; } ;


 int DMARXCTRL ;
 int napi_enable (int *) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int xge_create_desc_rings (struct net_device*) ;
 int xge_intr_enable (struct xge_pdata*) ;
 int xge_mac_enable (struct xge_pdata*) ;
 int xge_request_irq (struct net_device*) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

__attribute__((used)) static int xge_open(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 int ret;

 ret = xge_create_desc_rings(ndev);
 if (ret)
  return ret;

 napi_enable(&pdata->napi);
 ret = xge_request_irq(ndev);
 if (ret)
  return ret;

 xge_intr_enable(pdata);
 xge_wr_csr(pdata, DMARXCTRL, 1);

 phy_start(ndev->phydev);
 xge_mac_enable(pdata);
 netif_start_queue(ndev);

 return 0;
}
