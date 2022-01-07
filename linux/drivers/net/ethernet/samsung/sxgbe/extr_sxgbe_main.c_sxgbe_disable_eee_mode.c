
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sxgbe_priv_data {int tx_path_in_lpi_mode; int eee_ctrl_timer; int ioaddr; TYPE_2__* hw; } ;
struct TYPE_4__ {TYPE_1__* mac; } ;
struct TYPE_3__ {int (* reset_eee_mode ) (int ) ;} ;


 int del_timer_sync (int *) ;
 int stub1 (int ) ;

void sxgbe_disable_eee_mode(struct sxgbe_priv_data * const priv)
{

 priv->hw->mac->reset_eee_mode(priv->ioaddr);
 del_timer_sync(&priv->eee_ctrl_timer);
 priv->tx_path_in_lpi_mode = 0;
}
