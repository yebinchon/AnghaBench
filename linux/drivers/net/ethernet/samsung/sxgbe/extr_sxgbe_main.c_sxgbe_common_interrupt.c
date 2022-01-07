
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rx_lpi_exit_n; int rx_lpi_entry_n; int tx_lpi_exit_n; int tx_lpi_entry_n; } ;
struct sxgbe_priv_data {int tx_path_in_lpi_mode; TYPE_3__ xstats; int ioaddr; TYPE_2__* hw; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {TYPE_1__* mac; } ;
struct TYPE_4__ {int (* host_irq_status ) (int ,TYPE_3__*) ;} ;


 int IRQ_HANDLED ;
 int RX_ENTRY_LPI_MODE ;
 int RX_EXIT_LPI_MODE ;
 int TX_ENTRY_LPI_MODE ;
 int TX_EXIT_LPI_MODE ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static irqreturn_t sxgbe_common_interrupt(int irq, void *dev_id)
{
 struct net_device *netdev = (struct net_device *)dev_id;
 struct sxgbe_priv_data *priv = netdev_priv(netdev);
 int status;

 status = priv->hw->mac->host_irq_status(priv->ioaddr, &priv->xstats);

 if (status & TX_ENTRY_LPI_MODE) {
  priv->xstats.tx_lpi_entry_n++;
  priv->tx_path_in_lpi_mode = 1;
 }
 if (status & TX_EXIT_LPI_MODE) {
  priv->xstats.tx_lpi_exit_n++;
  priv->tx_path_in_lpi_mode = 0;
 }
 if (status & RX_ENTRY_LPI_MODE)
  priv->xstats.rx_lpi_entry_n++;
 if (status & RX_EXIT_LPI_MODE)
  priv->xstats.rx_lpi_exit_n++;

 return IRQ_HANDLED;
}
