
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct fec_enet_private {scalar_t__ hwp; } ;


 int FEC_DEFAULT_IMASK ;
 scalar_t__ FEC_IMASK ;
 int fec_enet_rx (struct net_device*,int) ;
 int fec_enet_tx (struct net_device*) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int fec_enet_rx_napi(struct napi_struct *napi, int budget)
{
 struct net_device *ndev = napi->dev;
 struct fec_enet_private *fep = netdev_priv(ndev);
 int pkts;

 pkts = fec_enet_rx(ndev, budget);

 fec_enet_tx(ndev);

 if (pkts < budget) {
  napi_complete_done(napi, pkts);
  writel(FEC_DEFAULT_IMASK, fep->hwp + FEC_IMASK);
 }
 return pkts;
}
