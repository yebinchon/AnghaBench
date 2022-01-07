
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int current_rd; } ;
struct TYPE_4__ {TYPE_1__ regulatory; } ;
struct ath10k {TYPE_2__ ath_common; int hw_eeprom_rd; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_mac_get_wrdd_regulatory (struct ath10k*,int *) ;

__attribute__((used)) static int ath10k_mac_init_rd(struct ath10k *ar)
{
 int ret;
 u16 rd;

 ret = ath10k_mac_get_wrdd_regulatory(ar, &rd);
 if (ret) {
  ath10k_dbg(ar, ATH10K_DBG_BOOT,
      "fallback to eeprom programmed regulatory settings\n");
  rd = ar->hw_eeprom_rd;
 }

 ar->ath_common.regulatory.current_rd = rd;
 return 0;
}
