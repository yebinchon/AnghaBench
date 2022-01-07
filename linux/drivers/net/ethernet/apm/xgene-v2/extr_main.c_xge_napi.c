
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;


 int napi_complete_done (struct napi_struct*,int) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int xge_intr_enable (struct xge_pdata*) ;
 int xge_rx_poll (struct net_device*,int const) ;
 int xge_txc_poll (struct net_device*) ;

__attribute__((used)) static int xge_napi(struct napi_struct *napi, const int budget)
{
 struct net_device *ndev = napi->dev;
 struct xge_pdata *pdata;
 int processed;

 pdata = netdev_priv(ndev);

 xge_txc_poll(ndev);
 processed = xge_rx_poll(ndev, budget);

 if (processed < budget) {
  napi_complete_done(napi, processed);
  xge_intr_enable(pdata);
 }

 return processed;
}
