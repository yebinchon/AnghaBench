
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfhsi {TYPE_1__* ops; int * rx_flip_buf; int * rx_buf; int * tx_buf; int wq; int aggregation_timer; int rx_slowpath_timer; int inactivity_timer; int bits; } ;
struct TYPE_3__ {int (* cfhsi_down ) (TYPE_1__*) ;int (* cfhsi_rx_cancel ) (TYPE_1__*) ;} ;


 int CFHSI_SHUTDOWN ;
 int cfhsi_abort_tx (struct cfhsi*) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int kfree (int *) ;
 struct cfhsi* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static int cfhsi_close(struct net_device *ndev)
{
 struct cfhsi *cfhsi = netdev_priv(ndev);
 u8 *tx_buf, *rx_buf, *flip_buf;


 set_bit(CFHSI_SHUTDOWN, &cfhsi->bits);


 del_timer_sync(&cfhsi->inactivity_timer);
 del_timer_sync(&cfhsi->rx_slowpath_timer);
 del_timer_sync(&cfhsi->aggregation_timer);


 cfhsi->ops->cfhsi_rx_cancel(cfhsi->ops);


 destroy_workqueue(cfhsi->wq);


 tx_buf = cfhsi->tx_buf;
 rx_buf = cfhsi->rx_buf;
 flip_buf = cfhsi->rx_flip_buf;

 cfhsi_abort_tx(cfhsi);


 cfhsi->ops->cfhsi_down(cfhsi->ops);


 kfree(tx_buf);
 kfree(rx_buf);
 kfree(flip_buf);
 return 0;
}
