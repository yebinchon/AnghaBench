
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int emac_irq; int * napi; } ;
struct net_device {int dummy; } ;


 int ECMR ;
 int ECMR_MPDE ;
 int ECSIPR ;
 int ECSIPR_MPDIP ;
 size_t RAVB_BE ;
 size_t RAVB_NC ;
 int RIC0 ;
 int RIC2 ;
 int TIC ;
 int enable_irq_wake (int ) ;
 int napi_disable (int *) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_write (struct net_device*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int ravb_wol_setup(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);


 ravb_write(ndev, 0, RIC0);
 ravb_write(ndev, 0, RIC2);
 ravb_write(ndev, 0, TIC);


 synchronize_irq(priv->emac_irq);
 napi_disable(&priv->napi[RAVB_NC]);
 napi_disable(&priv->napi[RAVB_BE]);
 ravb_write(ndev, ECSIPR_MPDIP, ECSIPR);


 ravb_modify(ndev, ECMR, ECMR_MPDE, ECMR_MPDE);

 return enable_irq_wake(priv->emac_irq);
}
