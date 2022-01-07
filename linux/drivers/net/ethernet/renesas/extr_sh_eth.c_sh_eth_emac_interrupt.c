
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sh_eth_private {scalar_t__ ether_link_active_low; scalar_t__ no_ether_link; TYPE_3__* cd; TYPE_2__* pdev; } ;
struct TYPE_4__ {int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_6__ {scalar_t__ no_psr; } ;
struct TYPE_5__ {int dev; } ;


 int ECSIPR ;
 int ECSR ;
 int ECSR_ICD ;
 int ECSR_LCHNG ;
 int ECSR_MPD ;
 int EESIPR ;
 int EESIPR_ECIIP ;
 int PHY_ST_LINK ;
 int PSR ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int pm_wakeup_event (int *,int ) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;
 int sh_eth_rcv_snd_disable (struct net_device*) ;
 int sh_eth_rcv_snd_enable (struct net_device*) ;
 int sh_eth_read (struct net_device*,int ) ;
 int sh_eth_write (struct net_device*,int,int ) ;

__attribute__((used)) static void sh_eth_emac_interrupt(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u32 felic_stat;
 u32 link_stat;

 felic_stat = sh_eth_read(ndev, ECSR) & sh_eth_read(ndev, ECSIPR);
 sh_eth_write(ndev, felic_stat, ECSR);
 if (felic_stat & ECSR_ICD)
  ndev->stats.tx_carrier_errors++;
 if (felic_stat & ECSR_MPD)
  pm_wakeup_event(&mdp->pdev->dev, 0);
 if (felic_stat & ECSR_LCHNG) {

  if (mdp->cd->no_psr || mdp->no_ether_link)
   return;
  link_stat = sh_eth_read(ndev, PSR);
  if (mdp->ether_link_active_low)
   link_stat = ~link_stat;
  if (!(link_stat & PHY_ST_LINK)) {
   sh_eth_rcv_snd_disable(ndev);
  } else {

   sh_eth_modify(ndev, EESIPR, EESIPR_ECIIP, 0);

   sh_eth_modify(ndev, ECSR, 0, 0);
   sh_eth_modify(ndev, EESIPR, EESIPR_ECIIP, EESIPR_ECIIP);

   sh_eth_rcv_snd_enable(ndev);
  }
 }
}
