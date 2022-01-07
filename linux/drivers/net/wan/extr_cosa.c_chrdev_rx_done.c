
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_data {int rx_status; int rxwaitq; int wsem; int rxdata; } ;


 int kfree (int ) ;
 int up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int chrdev_rx_done(struct channel_data *chan)
{
 if (chan->rx_status) {
  kfree(chan->rxdata);
  up(&chan->wsem);
 }
 chan->rx_status = 1;
 wake_up_interruptible(&chan->rxwaitq);
 return 1;
}
