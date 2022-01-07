
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int info; int clock; int default_addend; int current_addend; } ;
struct ravb_private {TYPE_1__ ptp; int lock; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int GCCR ;
 int GCCR_TCR ;
 int GCCR_TCR_NOREQ ;
 int GCCR_TCSS ;
 int GCCR_TCSS_ADJGPTP ;
 int GTI ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ptp_clock_register (int *,int *) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_ptp_info ;
 int ravb_read (struct net_device*,int ) ;
 int ravb_wait (struct net_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ravb_ptp_init(struct net_device *ndev, struct platform_device *pdev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 unsigned long flags;

 priv->ptp.info = ravb_ptp_info;

 priv->ptp.default_addend = ravb_read(ndev, GTI);
 priv->ptp.current_addend = priv->ptp.default_addend;

 spin_lock_irqsave(&priv->lock, flags);
 ravb_wait(ndev, GCCR, GCCR_TCR, GCCR_TCR_NOREQ);
 ravb_modify(ndev, GCCR, GCCR_TCSS, GCCR_TCSS_ADJGPTP);
 spin_unlock_irqrestore(&priv->lock, flags);

 priv->ptp.clock = ptp_clock_register(&priv->ptp.info, &pdev->dev);
}
