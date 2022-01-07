
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int dummy; } ;


 int IS_INITIALIZED (struct ar9170*) ;
 scalar_t__ IS_STARTED (struct ar9170*) ;
 int carl9170_tx_scheduler (struct ar9170*) ;
 int carl9170_usb_rx_work (struct ar9170*) ;

__attribute__((used)) static void carl9170_usb_tasklet(unsigned long data)
{
 struct ar9170 *ar = (struct ar9170 *) data;

 if (!IS_INITIALIZED(ar))
  return;

 carl9170_usb_rx_work(ar);






 if (IS_STARTED(ar))
  carl9170_tx_scheduler(ar);
}
