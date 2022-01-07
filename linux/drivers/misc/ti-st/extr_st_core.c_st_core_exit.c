
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int tx_skb; int rx_skb; int tx_waitq; int txq; } ;


 int N_TI_WL ;
 int kfree (struct st_data_s*) ;
 int kfree_skb (int ) ;
 int pr_err (char*,long) ;
 int skb_queue_purge (int *) ;
 long st_ll_deinit (struct st_data_s*) ;
 long tty_unregister_ldisc (int ) ;

void st_core_exit(struct st_data_s *st_gdata)
{
 long err;

 err = st_ll_deinit(st_gdata);
 if (err)
  pr_err("error during deinit of ST LL %ld", err);

 if (st_gdata != ((void*)0)) {

  skb_queue_purge(&st_gdata->txq);
  skb_queue_purge(&st_gdata->tx_waitq);
  kfree_skb(st_gdata->rx_skb);
  kfree_skb(st_gdata->tx_skb);

  err = tty_unregister_ldisc(N_TI_WL);
  if (err)
   pr_err("unable to un-register ldisc %ld", err);

  kfree(st_gdata);
 }
}
