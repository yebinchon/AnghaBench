
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_data {int tx_status; int txwaitq; int wsem; int txbuf; } ;


 int kfree (int ) ;
 int up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int chrdev_tx_done(struct channel_data *chan, int size)
{
 if (chan->tx_status) {
  kfree(chan->txbuf);
  up(&chan->wsem);
 }
 chan->tx_status = 1;
 wake_up_interruptible(&chan->txwaitq);
 return 1;
}
