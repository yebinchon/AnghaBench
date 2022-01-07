
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pasemi_mac_txring {int clean_timer; struct pasemi_mac* mac; } ;
struct pasemi_mac {int dummy; } ;


 scalar_t__ TX_CLEAN_INTERVAL ;
 int clean_timer ;
 struct pasemi_mac_txring* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pasemi_mac_clean_tx (struct pasemi_mac_txring*) ;
 int pasemi_mac_restart_tx_intr (struct pasemi_mac*) ;
 struct pasemi_mac_txring* txring ;

__attribute__((used)) static void pasemi_mac_tx_timer(struct timer_list *t)
{
 struct pasemi_mac_txring *txring = from_timer(txring, t, clean_timer);
 struct pasemi_mac *mac = txring->mac;

 pasemi_mac_clean_tx(txring);

 mod_timer(&txring->clean_timer, jiffies + TX_CLEAN_INTERVAL);

 pasemi_mac_restart_tx_intr(mac);
}
