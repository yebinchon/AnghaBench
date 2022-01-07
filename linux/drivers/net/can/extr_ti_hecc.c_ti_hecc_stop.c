
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct ti_hecc_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_STOPPED ;
 int HECC_CANGIM ;
 int HECC_CANMC ;
 int HECC_CANMC_CCR ;
 int HECC_CANME ;
 int HECC_CANMIM ;
 int hecc_set_bit (struct ti_hecc_priv*,int ,int ) ;
 int hecc_write (struct ti_hecc_priv*,int ,int ) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ti_hecc_stop(struct net_device *ndev)
{
 struct ti_hecc_priv *priv = netdev_priv(ndev);


 hecc_set_bit(priv, HECC_CANMC, HECC_CANMC_CCR);


 hecc_write(priv, HECC_CANGIM, 0);
 hecc_write(priv, HECC_CANMIM, 0);
 hecc_write(priv, HECC_CANME, 0);
 priv->can.state = CAN_STATE_STOPPED;
}
