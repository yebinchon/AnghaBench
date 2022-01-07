
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523 {int dummy; } ;


 int ar5523_err (struct ar5523*,char*,int) ;
 int ar5523_queue_init (struct ar5523*) ;
 int ar5523_reset_tx_queues (struct ar5523*) ;
 int ar5523_set_chan (struct ar5523*) ;

__attribute__((used)) static int ar5523_switch_chan(struct ar5523 *ar)
{
 int error;

 error = ar5523_set_chan(ar);
 if (error) {
  ar5523_err(ar, "could not set chan, error %d\n", error);
  goto out_err;
 }


 error = ar5523_reset_tx_queues(ar);
 if (error) {
  ar5523_err(ar, "could not reset Tx queues, error %d\n",
      error);
  goto out_err;
 }

 error = ar5523_queue_init(ar);
 if (error)
  ar5523_err(ar, "could not init wme, error %d\n", error);

out_err:
 return error;
}
