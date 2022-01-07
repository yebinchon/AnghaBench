
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int expires; } ;
struct TYPE_8__ {scalar_t__ eee; } ;
struct sxgbe_priv_data {int eee_active; int tx_lpi_timer; int ioaddr; TYPE_2__* hw; TYPE_4__ eee_ctrl_timer; TYPE_3__ hw_cap; struct net_device* dev; } ;
struct net_device {int phydev; } ;
struct TYPE_7__ {TYPE_1__* mac; } ;
struct TYPE_6__ {int (* set_eee_timer ) (int ,int ,int ) ;} ;


 int SXGBE_DEFAULT_LPI_TIMER ;
 int SXGBE_LPI_TIMER (int ) ;
 int add_timer (TYPE_4__*) ;
 int eee_timer ;
 scalar_t__ phy_init_eee (int ,int) ;
 int pr_info (char*) ;
 int stub1 (int ,int ,int ) ;
 int sxgbe_eee_ctrl_timer ;
 int timer_setup (TYPE_4__*,int ,int ) ;

bool sxgbe_eee_init(struct sxgbe_priv_data * const priv)
{
 struct net_device *ndev = priv->dev;
 bool ret = 0;


 if (priv->hw_cap.eee) {

  if (phy_init_eee(ndev->phydev, 1))
   return 0;

  priv->eee_active = 1;
  timer_setup(&priv->eee_ctrl_timer, sxgbe_eee_ctrl_timer, 0);
  priv->eee_ctrl_timer.expires = SXGBE_LPI_TIMER(eee_timer);
  add_timer(&priv->eee_ctrl_timer);

  priv->hw->mac->set_eee_timer(priv->ioaddr,
          SXGBE_DEFAULT_LPI_TIMER,
          priv->tx_lpi_timer);

  pr_info("Energy-Efficient Ethernet initialized\n");

  ret = 1;
 }

 return ret;
}
