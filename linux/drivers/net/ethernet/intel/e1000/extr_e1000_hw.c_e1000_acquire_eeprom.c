
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_eeprom_info {scalar_t__ type; } ;
struct e1000_hw {scalar_t__ mac_type; struct e1000_eeprom_info eeprom; } ;
typedef int s32 ;


 scalar_t__ E1000_EECD_CS ;
 scalar_t__ E1000_EECD_DI ;
 scalar_t__ E1000_EECD_GNT ;
 scalar_t__ E1000_EECD_REQ ;
 scalar_t__ E1000_EECD_SK ;
 scalar_t__ E1000_EEPROM_GRANT_ATTEMPTS ;
 int E1000_ERR_EEPROM ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH () ;
 int EECD ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_eeprom_microwire ;
 scalar_t__ e1000_eeprom_spi ;
 int e_dbg (char*) ;
 scalar_t__ er32 (int ) ;
 int ew32 (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_acquire_eeprom(struct e1000_hw *hw)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u32 eecd, i = 0;

 eecd = er32(EECD);


 if (hw->mac_type > e1000_82544) {
  eecd |= E1000_EECD_REQ;
  ew32(EECD, eecd);
  eecd = er32(EECD);
  while ((!(eecd & E1000_EECD_GNT)) &&
         (i < E1000_EEPROM_GRANT_ATTEMPTS)) {
   i++;
   udelay(5);
   eecd = er32(EECD);
  }
  if (!(eecd & E1000_EECD_GNT)) {
   eecd &= ~E1000_EECD_REQ;
   ew32(EECD, eecd);
   e_dbg("Could not acquire EEPROM grant\n");
   return -E1000_ERR_EEPROM;
  }
 }



 if (eeprom->type == e1000_eeprom_microwire) {

  eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
  ew32(EECD, eecd);


  eecd |= E1000_EECD_CS;
  ew32(EECD, eecd);
 } else if (eeprom->type == e1000_eeprom_spi) {

  eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(1);
 }

 return E1000_SUCCESS;
}
