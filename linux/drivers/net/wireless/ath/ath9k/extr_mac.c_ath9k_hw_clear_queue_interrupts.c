
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int txok_interrupt_mask; int txerr_interrupt_mask; int txdesc_interrupt_mask; int txeol_interrupt_mask; int txurn_interrupt_mask; } ;



__attribute__((used)) static void ath9k_hw_clear_queue_interrupts(struct ath_hw *ah, u32 q)
{
 ah->txok_interrupt_mask &= ~(1 << q);
 ah->txerr_interrupt_mask &= ~(1 << q);
 ah->txdesc_interrupt_mask &= ~(1 << q);
 ah->txeol_interrupt_mask &= ~(1 << q);
 ah->txurn_interrupt_mask &= ~(1 << q);
}
