
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct netsec_priv {scalar_t__ eeprom_base; } ;


 scalar_t__ NETSEC_EEPROM_HM_ME_ADDRESS_H ;
 scalar_t__ NETSEC_EEPROM_HM_ME_ADDRESS_L ;
 scalar_t__ NETSEC_EEPROM_HM_ME_SIZE ;
 scalar_t__ NETSEC_EEPROM_MH_ME_ADDRESS_H ;
 scalar_t__ NETSEC_EEPROM_MH_ME_ADDRESS_L ;
 scalar_t__ NETSEC_EEPROM_MH_ME_SIZE ;
 scalar_t__ NETSEC_EEPROM_PKT_ME_ADDRESS ;
 scalar_t__ NETSEC_EEPROM_PKT_ME_SIZE ;
 int NETSEC_REG_DMAC_HM_CMD_BUF ;
 int NETSEC_REG_DMAC_MH_CMD_BUF ;
 int NETSEC_REG_PKT_CMD_BUF ;
 int netsec_netdev_load_ucode_region (struct netsec_priv*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static int netsec_netdev_load_microcode(struct netsec_priv *priv)
{
 u32 addr_h, addr_l, size;
 int err;

 addr_h = readl(priv->eeprom_base + NETSEC_EEPROM_HM_ME_ADDRESS_H);
 addr_l = readl(priv->eeprom_base + NETSEC_EEPROM_HM_ME_ADDRESS_L);
 size = readl(priv->eeprom_base + NETSEC_EEPROM_HM_ME_SIZE);
 err = netsec_netdev_load_ucode_region(priv, NETSEC_REG_DMAC_HM_CMD_BUF,
           addr_h, addr_l, size);
 if (err)
  return err;

 addr_h = readl(priv->eeprom_base + NETSEC_EEPROM_MH_ME_ADDRESS_H);
 addr_l = readl(priv->eeprom_base + NETSEC_EEPROM_MH_ME_ADDRESS_L);
 size = readl(priv->eeprom_base + NETSEC_EEPROM_MH_ME_SIZE);
 err = netsec_netdev_load_ucode_region(priv, NETSEC_REG_DMAC_MH_CMD_BUF,
           addr_h, addr_l, size);
 if (err)
  return err;

 addr_h = 0;
 addr_l = readl(priv->eeprom_base + NETSEC_EEPROM_PKT_ME_ADDRESS);
 size = readl(priv->eeprom_base + NETSEC_EEPROM_PKT_ME_SIZE);
 err = netsec_netdev_load_ucode_region(priv, NETSEC_REG_PKT_CMD_BUF,
           addr_h, addr_l, size);
 if (err)
  return err;

 return 0;
}
