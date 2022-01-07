
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sixpack* disc_data; } ;
struct sixpack {int dev; int xbuff; int rbuff; int resync_t; int tx_t; int dead; int refcnt; } ;


 int del_timer_sync (int *) ;
 int disc_data_lock ;
 int kfree (int ) ;
 int netif_stop_queue (int ) ;
 int refcount_dec_and_test (int *) ;
 int unregister_netdev (int ) ;
 int wait_for_completion (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void sixpack_close(struct tty_struct *tty)
{
 struct sixpack *sp;

 write_lock_bh(&disc_data_lock);
 sp = tty->disc_data;
 tty->disc_data = ((void*)0);
 write_unlock_bh(&disc_data_lock);
 if (!sp)
  return;





 if (!refcount_dec_and_test(&sp->refcnt))
  wait_for_completion(&sp->dead);





 netif_stop_queue(sp->dev);

 del_timer_sync(&sp->tx_t);
 del_timer_sync(&sp->resync_t);


 kfree(sp->rbuff);
 kfree(sp->xbuff);

 unregister_netdev(sp->dev);
}
