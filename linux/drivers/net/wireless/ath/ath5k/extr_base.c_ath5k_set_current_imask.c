
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int imask; int irqlock; scalar_t__ tx_pending; scalar_t__ rx_pending; int status; } ;
typedef enum ath5k_int { ____Placeholder_ath5k_int } ath5k_int ;


 int AR5K_INT_RX_ALL ;
 int AR5K_INT_TX_ALL ;
 int ATH_STAT_RESET ;
 int ath5k_hw_set_imr (struct ath5k_hw*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void
ath5k_set_current_imask(struct ath5k_hw *ah)
{
 enum ath5k_int imask;
 unsigned long flags;

 if (test_bit(ATH_STAT_RESET, ah->status))
  return;

 spin_lock_irqsave(&ah->irqlock, flags);
 imask = ah->imask;
 if (ah->rx_pending)
  imask &= ~AR5K_INT_RX_ALL;
 if (ah->tx_pending)
  imask &= ~AR5K_INT_TX_ALL;
 ath5k_hw_set_imr(ah, imask);
 spin_unlock_irqrestore(&ah->irqlock, flags);
}
