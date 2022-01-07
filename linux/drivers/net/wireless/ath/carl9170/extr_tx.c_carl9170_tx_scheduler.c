
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {scalar_t__ tx_schedule; scalar_t__ tx_ampdu_schedule; } ;


 int carl9170_tx (struct ar9170*) ;
 int carl9170_tx_ampdu (struct ar9170*) ;

void carl9170_tx_scheduler(struct ar9170 *ar)
{

 if (ar->tx_ampdu_schedule)
  carl9170_tx_ampdu(ar);

 if (ar->tx_schedule)
  carl9170_tx(ar);
}
