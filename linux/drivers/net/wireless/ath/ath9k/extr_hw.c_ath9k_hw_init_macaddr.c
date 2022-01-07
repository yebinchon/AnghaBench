
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath_common {int* macaddr; } ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int const) ;} ;





 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*,int*) ;
 int eth_random_addr (int*) ;
 scalar_t__ is_valid_ether_addr (int*) ;
 int stub1 (struct ath_hw*,int const) ;

__attribute__((used)) static void ath9k_hw_init_macaddr(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int i;
 u16 eeval;
 static const u32 EEP_MAC[] = { 130, 129, 128 };


 if (is_valid_ether_addr(common->macaddr))
  return;

 for (i = 0; i < 3; i++) {
  eeval = ah->eep_ops->get_eeprom(ah, EEP_MAC[i]);
  common->macaddr[2 * i] = eeval >> 8;
  common->macaddr[2 * i + 1] = eeval & 0xff;
 }

 if (is_valid_ether_addr(common->macaddr))
  return;

 ath_err(common, "eeprom contains invalid mac address: %pM\n",
  common->macaddr);

 eth_random_addr(common->macaddr);
 ath_err(common, "random mac address will be used: %pM\n",
  common->macaddr);

 return;
}
