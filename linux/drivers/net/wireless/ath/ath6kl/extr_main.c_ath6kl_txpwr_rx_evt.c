
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath6kl {int event_wq; int tx_pwr; } ;


 int wake_up (int *) ;

void ath6kl_txpwr_rx_evt(void *devt, u8 tx_pwr)
{
 struct ath6kl *ar = (struct ath6kl *) devt;

 ar->tx_pwr = tx_pwr;
 wake_up(&ar->event_wq);
}
