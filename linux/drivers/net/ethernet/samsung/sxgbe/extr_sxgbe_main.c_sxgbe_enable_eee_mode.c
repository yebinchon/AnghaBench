
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sxgbe_priv_data {int ioaddr; TYPE_2__* hw; int tx_path_in_lpi_mode; } ;
struct TYPE_4__ {TYPE_1__* mac; } ;
struct TYPE_3__ {int (* set_eee_mode ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void sxgbe_enable_eee_mode(const struct sxgbe_priv_data *priv)
{

 if (!priv->tx_path_in_lpi_mode)
  priv->hw->mac->set_eee_mode(priv->ioaddr);
}
