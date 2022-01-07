
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_INTR_ASYNC_CAUSE ;
 int AR_INTR_ASYNC_MASK_MCI ;
 int AR_INTR_MAC_IRQ ;
 int AR_INTR_SPURIOUS ;
 int AR_INTR_SYNC_CAUSE ;
 int AR_INTR_SYNC_DEFAULT ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int ) ;

bool ath9k_hw_intrpend(struct ath_hw *ah)
{
 u32 host_isr;

 if (AR_SREV_9100(ah))
  return 1;

 host_isr = REG_READ(ah, AR_INTR_ASYNC_CAUSE);

 if (((host_isr & AR_INTR_MAC_IRQ) ||
      (host_isr & AR_INTR_ASYNC_MASK_MCI)) &&
     (host_isr != AR_INTR_SPURIOUS))
  return 1;

 host_isr = REG_READ(ah, AR_INTR_SYNC_CAUSE);
 if ((host_isr & AR_INTR_SYNC_DEFAULT)
     && (host_isr != AR_INTR_SPURIOUS))
  return 1;

 return 0;
}
