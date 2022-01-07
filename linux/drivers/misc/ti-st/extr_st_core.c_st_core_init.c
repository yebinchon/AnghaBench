
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_data_s {int work_write_wakeup; int lock; int tx_waitq; int txq; } ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int N_TI_WL ;
 int kfree (struct st_data_s*) ;
 struct st_data_s* kzalloc (int,int ) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int st_ldisc_ops ;
 long st_ll_init (struct st_data_s*) ;
 long tty_register_ldisc (int ,int *) ;
 long tty_unregister_ldisc (int ) ;
 int work_fn_write_wakeup ;

int st_core_init(struct st_data_s **core_data)
{
 struct st_data_s *st_gdata;
 long err;

 err = tty_register_ldisc(N_TI_WL, &st_ldisc_ops);
 if (err) {
  pr_err("error registering %d line discipline %ld",
      N_TI_WL, err);
  return err;
 }
 pr_debug("registered n_shared line discipline");

 st_gdata = kzalloc(sizeof(struct st_data_s), GFP_KERNEL);
 if (!st_gdata) {
  pr_err("memory allocation failed");
  err = tty_unregister_ldisc(N_TI_WL);
  if (err)
   pr_err("unable to un-register ldisc %ld", err);
  err = -ENOMEM;
  return err;
 }




 skb_queue_head_init(&st_gdata->txq);
 skb_queue_head_init(&st_gdata->tx_waitq);


 spin_lock_init(&st_gdata->lock);

 err = st_ll_init(st_gdata);
 if (err) {
  pr_err("error during st_ll initialization(%ld)", err);
  kfree(st_gdata);
  err = tty_unregister_ldisc(N_TI_WL);
  if (err)
   pr_err("unable to un-register ldisc");
  return err;
 }

 INIT_WORK(&st_gdata->work_write_wakeup, work_fn_write_wakeup);

 *core_data = st_gdata;
 return 0;
}
