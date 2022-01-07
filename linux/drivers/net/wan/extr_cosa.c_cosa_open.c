
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct channel_data* private_data; } ;
struct cosa_data {int nchannels; int lock; int usage; struct channel_data* chan; } ;
struct channel_data {scalar_t__ usage; int rx_done; int setup_rx; int tx_done; } ;


 int CARD_MINOR_BITS ;
 int EBUSY ;
 int ENODEV ;
 int chrdev_rx_done ;
 int chrdev_setup_rx ;
 int chrdev_tx_done ;
 struct cosa_data* cosa_cards ;
 int cosa_chardev_mutex ;
 int file_inode (struct file*) ;
 int iminor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_cards ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cosa_open(struct inode *inode, struct file *file)
{
 struct cosa_data *cosa;
 struct channel_data *chan;
 unsigned long flags;
 int n;
 int ret = 0;

 mutex_lock(&cosa_chardev_mutex);
 if ((n=iminor(file_inode(file))>>CARD_MINOR_BITS)
  >= nr_cards) {
  ret = -ENODEV;
  goto out;
 }
 cosa = cosa_cards+n;

 if ((n=iminor(file_inode(file))
  & ((1<<CARD_MINOR_BITS)-1)) >= cosa->nchannels) {
  ret = -ENODEV;
  goto out;
 }
 chan = cosa->chan + n;

 file->private_data = chan;

 spin_lock_irqsave(&cosa->lock, flags);

 if (chan->usage < 0) {
  spin_unlock_irqrestore(&cosa->lock, flags);
  ret = -EBUSY;
  goto out;
 }
 cosa->usage++;
 chan->usage++;

 chan->tx_done = chrdev_tx_done;
 chan->setup_rx = chrdev_setup_rx;
 chan->rx_done = chrdev_rx_done;
 spin_unlock_irqrestore(&cosa->lock, flags);
out:
 mutex_unlock(&cosa_chardev_mutex);
 return ret;
}
