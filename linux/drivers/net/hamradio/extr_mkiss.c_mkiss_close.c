
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mkiss* disc_data; } ;
struct mkiss {int dev; int * tty; int xbuff; int rbuff; int dead; int refcnt; } ;


 int disc_data_lock ;
 int kfree (int ) ;
 int netif_stop_queue (int ) ;
 int refcount_dec_and_test (int *) ;
 int unregister_netdev (int ) ;
 int wait_for_completion (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void mkiss_close(struct tty_struct *tty)
{
 struct mkiss *ax;

 write_lock_bh(&disc_data_lock);
 ax = tty->disc_data;
 tty->disc_data = ((void*)0);
 write_unlock_bh(&disc_data_lock);

 if (!ax)
  return;





 if (!refcount_dec_and_test(&ax->refcnt))
  wait_for_completion(&ax->dead);




 netif_stop_queue(ax->dev);


 kfree(ax->rbuff);
 kfree(ax->xbuff);

 ax->tty = ((void*)0);

 unregister_netdev(ax->dev);
}
