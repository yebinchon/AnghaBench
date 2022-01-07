
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * disc_data; } ;
struct slcan {scalar_t__ magic; int dev; int tx_work; int lock; struct tty_struct* tty; } ;


 scalar_t__ SLCAN_MAGIC ;
 int flush_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void slcan_close(struct tty_struct *tty)
{
 struct slcan *sl = (struct slcan *) tty->disc_data;


 if (!sl || sl->magic != SLCAN_MAGIC || sl->tty != tty)
  return;

 spin_lock_bh(&sl->lock);
 tty->disc_data = ((void*)0);
 sl->tty = ((void*)0);
 spin_unlock_bh(&sl->lock);

 flush_work(&sl->tx_work);


 unregister_netdev(sl->dev);

}
