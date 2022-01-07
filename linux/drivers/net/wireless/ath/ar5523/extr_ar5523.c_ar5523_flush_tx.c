
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523 {int tx_nr_pending; int tx_nr_total; int tx_flush_waitq; int flags; } ;


 int AR5523_FLUSH_TIMEOUT ;
 int AR5523_USB_DISCONNECTED ;
 int ar5523_err (struct ar5523*,char*,int ,int ) ;
 int ar5523_tx_work_locked (struct ar5523*) ;
 int atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void ar5523_flush_tx(struct ar5523 *ar)
{
 ar5523_tx_work_locked(ar);


 if (test_bit(AR5523_USB_DISCONNECTED, &ar->flags))
  return;
 if (!wait_event_timeout(ar->tx_flush_waitq,
     !atomic_read(&ar->tx_nr_pending), AR5523_FLUSH_TIMEOUT))
  ar5523_err(ar, "flush timeout (tot %d pend %d)\n",
      atomic_read(&ar->tx_nr_total),
      atomic_read(&ar->tx_nr_pending));
}
