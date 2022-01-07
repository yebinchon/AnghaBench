
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int emac_irq; int * napi; } ;
struct net_device {int dummy; } ;


 int ECMR ;
 int ECMR_MPDE ;
 size_t RAVB_BE ;
 size_t RAVB_NC ;
 int disable_irq_wake (int ) ;
 int napi_enable (int *) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_close (struct net_device*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int ravb_wol_restore(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 int ret;

 napi_enable(&priv->napi[RAVB_NC]);
 napi_enable(&priv->napi[RAVB_BE]);


 ravb_modify(ndev, ECMR, ECMR_MPDE, 0);

 ret = ravb_close(ndev);
 if (ret < 0)
  return ret;

 return disable_irq_wake(priv->emac_irq);
}
