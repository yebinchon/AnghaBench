
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int macRev; int devid; int macVersion; } ;
struct ath_hw {int (* get_mac_revision ) () ;int is_pciexpress; TYPE_1__ hw_version; } ;
 int AR_SREV ;
 int AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int AR_SREV_ID ;
 int AR_SREV_REVISION ;
 int AR_SREV_REVISION2 ;
 int AR_SREV_TYPE2_HOST_MODE ;
 int AR_SREV_TYPE2_S ;
 int AR_SREV_VERSION ;
 int AR_SREV_VERSION2 ;
 int AR_SREV_VERSION_5416_PCIE ;
 int AR_SREV_VERSION_9100 ;
 int AR_SREV_VERSION_9330 ;
 int AR_SREV_VERSION_9340 ;
 int AR_SREV_VERSION_9531 ;
 int AR_SREV_VERSION_9550 ;
 int AR_SREV_VERSION_9561 ;
 int EIO ;
 void* MS (int,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_err (int ,char*) ;
 int stub1 () ;

__attribute__((used)) static bool ath9k_hw_read_revisions(struct ath_hw *ah)
{
 u32 srev;
 u32 val;

 if (ah->get_mac_revision)
  ah->hw_version.macRev = ah->get_mac_revision();

 switch (ah->hw_version.devid) {
 case 133:
  ah->hw_version.macVersion = AR_SREV_VERSION_9100;
  break;
 case 132:
  ah->hw_version.macVersion = AR_SREV_VERSION_9330;
  if (!ah->get_mac_revision) {
   val = REG_READ(ah, AR_SREV);
   ah->hw_version.macRev = MS(val, AR_SREV_REVISION2);
  }
  return 1;
 case 131:
  ah->hw_version.macVersion = AR_SREV_VERSION_9340;
  return 1;
 case 129:
  ah->hw_version.macVersion = AR_SREV_VERSION_9550;
  return 1;
 case 130:
  ah->hw_version.macVersion = AR_SREV_VERSION_9531;
  return 1;
 case 128:
  ah->hw_version.macVersion = AR_SREV_VERSION_9561;
  return 1;
 }

 srev = REG_READ(ah, AR_SREV);

 if (srev == -EIO) {
  ath_err(ath9k_hw_common(ah),
   "Failed to read SREV register");
  return 0;
 }

 val = srev & AR_SREV_ID;

 if (val == 0xFF) {
  val = srev;
  ah->hw_version.macVersion =
   (val & AR_SREV_VERSION2) >> AR_SREV_TYPE2_S;
  ah->hw_version.macRev = MS(val, AR_SREV_REVISION2);

  if (AR_SREV_9462(ah) || AR_SREV_9565(ah))
   ah->is_pciexpress = 1;
  else
   ah->is_pciexpress = (val &
          AR_SREV_TYPE2_HOST_MODE) ? 0 : 1;
 } else {
  if (!AR_SREV_9100(ah))
   ah->hw_version.macVersion = MS(val, AR_SREV_VERSION);

  ah->hw_version.macRev = val & AR_SREV_REVISION;

  if (ah->hw_version.macVersion == AR_SREV_VERSION_5416_PCIE)
   ah->is_pciexpress = 1;
 }

 return 1;
}
