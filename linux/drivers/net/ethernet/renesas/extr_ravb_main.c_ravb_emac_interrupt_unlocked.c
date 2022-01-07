
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ravb_private {scalar_t__ avb_link_active_low; scalar_t__ no_avb_link; TYPE_2__* pdev; } ;
struct TYPE_3__ {int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int dev; } ;


 int ECSR ;
 int ECSR_ICD ;
 int ECSR_LCHNG ;
 int ECSR_MPD ;
 int PSR ;
 int PSR_LMON ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int pm_wakeup_event (int *,int ) ;
 int ravb_rcv_snd_disable (struct net_device*) ;
 int ravb_rcv_snd_enable (struct net_device*) ;
 int ravb_read (struct net_device*,int ) ;
 int ravb_write (struct net_device*,int,int ) ;

__attribute__((used)) static void ravb_emac_interrupt_unlocked(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 u32 ecsr, psr;

 ecsr = ravb_read(ndev, ECSR);
 ravb_write(ndev, ecsr, ECSR);

 if (ecsr & ECSR_MPD)
  pm_wakeup_event(&priv->pdev->dev, 0);
 if (ecsr & ECSR_ICD)
  ndev->stats.tx_carrier_errors++;
 if (ecsr & ECSR_LCHNG) {

  if (priv->no_avb_link)
   return;
  psr = ravb_read(ndev, PSR);
  if (priv->avb_link_active_low)
   psr ^= PSR_LMON;
  if (!(psr & PSR_LMON)) {

   ravb_rcv_snd_disable(ndev);
  } else {

   ravb_rcv_snd_enable(ndev);
  }
 }
}
