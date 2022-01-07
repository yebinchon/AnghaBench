
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath9k_hw_mci {scalar_t__ rx_msg_intr; scalar_t__ raw_intr; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;



void ar9003_mci_get_interrupt(struct ath_hw *ah, u32 *raw_intr,
         u32 *rx_msg_intr)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 *raw_intr = mci->raw_intr;
 *rx_msg_intr = mci->rx_msg_intr;


 mci->raw_intr = 0;
 mci->rx_msg_intr = 0;
}
