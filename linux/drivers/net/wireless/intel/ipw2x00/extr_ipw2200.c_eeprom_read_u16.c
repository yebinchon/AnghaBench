
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ipw_priv {int dummy; } ;


 int EEPROM_BIT_CS ;
 int EEPROM_BIT_DO ;
 int EEPROM_BIT_SK ;
 int EEPROM_CMD_READ ;
 int FW_MEM_REG_EEPROM_ACCESS ;
 int eeprom_disable_cs (struct ipw_priv*) ;
 int eeprom_op (struct ipw_priv*,int ,int ) ;
 int eeprom_write_reg (struct ipw_priv*,int) ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;

__attribute__((used)) static u16 eeprom_read_u16(struct ipw_priv *priv, u8 addr)
{
 int i;
 u16 r = 0;


 eeprom_op(priv, EEPROM_CMD_READ, addr);


 eeprom_write_reg(priv, EEPROM_BIT_CS);


 for (i = 0; i < 16; i++) {
  u32 data = 0;
  eeprom_write_reg(priv, EEPROM_BIT_CS | EEPROM_BIT_SK);
  eeprom_write_reg(priv, EEPROM_BIT_CS);
  data = ipw_read_reg32(priv, FW_MEM_REG_EEPROM_ACCESS);
  r = (r << 1) | ((data & EEPROM_BIT_DO) ? 1 : 0);
 }


 eeprom_write_reg(priv, 0);
 eeprom_disable_cs(priv);

 return r;
}
