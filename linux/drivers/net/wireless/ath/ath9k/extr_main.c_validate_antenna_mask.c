
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_chainmask; } ;
struct ath_hw {TYPE_1__ caps; } ;


 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;

__attribute__((used)) static bool validate_antenna_mask(struct ath_hw *ah, u32 val)
{
 if (AR_SREV_9300_20_OR_LATER(ah))
  return 1;

 switch (val & 0x7) {
 case 0x1:
 case 0x3:
 case 0x7:
  return 1;
 case 0x2:
  return (ah->caps.rx_chainmask == 1);
 default:
  return 0;
 }
}
