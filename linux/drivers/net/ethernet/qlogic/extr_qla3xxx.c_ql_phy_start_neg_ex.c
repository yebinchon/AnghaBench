
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int portConfiguration; } ;
struct TYPE_4__ {int portConfiguration; } ;
struct TYPE_6__ {TYPE_2__ macCfg_port1; TYPE_1__ macCfg_port0; } ;
struct ql3_adapter {scalar_t__ phyType; size_t mac_index; TYPE_3__ nvram_data; } ;


 int CONTROL_REG ;
 int * PHYAddr ;
 scalar_t__ PHY_AGERE_ET1011C ;
 int PHY_CTRL_AUTO_NEG ;
 int PHY_CTRL_RESTART_NEG ;
 int PHY_GIG_ADV_1000F ;
 int PHY_GIG_ADV_1000H ;
 int PHY_GIG_ALL_PARAMS ;
 int PHY_GIG_CONTROL ;
 int PHY_NEG_ADVER ;
 int PHY_NEG_ADV_100F ;
 int PHY_NEG_ADV_100H ;
 int PHY_NEG_ADV_10F ;
 int PHY_NEG_ADV_10H ;
 int PHY_NEG_ALL_PARAMS ;
 int PHY_NEG_ASY_PAUSE ;
 int PHY_NEG_SYM_PAUSE ;
 int PORT_CONFIG_1000MB_SPEED ;
 int PORT_CONFIG_100MB_SPEED ;
 int PORT_CONFIG_10MB_SPEED ;
 int PORT_CONFIG_DEFAULT ;
 int PORT_CONFIG_FULL_DUPLEX_ENABLED ;
 int PORT_CONFIG_HALF_DUPLEX_ENABLED ;
 int PORT_CONFIG_SYM_PAUSE_ENABLED ;
 int ql_mii_read_reg_ex (struct ql3_adapter*,int ,int*,int ) ;
 int ql_mii_write_reg (struct ql3_adapter*,int,int) ;
 int ql_mii_write_reg_ex (struct ql3_adapter*,int ,int,int ) ;

__attribute__((used)) static void ql_phy_start_neg_ex(struct ql3_adapter *qdev)
{
 u16 reg;
 u16 portConfiguration;

 if (qdev->phyType == PHY_AGERE_ET1011C)
  ql_mii_write_reg(qdev, 0x13, 0x0000);


 if (qdev->mac_index == 0)
  portConfiguration =
   qdev->nvram_data.macCfg_port0.portConfiguration;
 else
  portConfiguration =
   qdev->nvram_data.macCfg_port1.portConfiguration;



 if (portConfiguration == 0)
  portConfiguration = PORT_CONFIG_DEFAULT;


 ql_mii_read_reg_ex(qdev, PHY_GIG_CONTROL, &reg,
      PHYAddr[qdev->mac_index]);
 reg &= ~PHY_GIG_ALL_PARAMS;

 if (portConfiguration & PORT_CONFIG_1000MB_SPEED) {
  if (portConfiguration & PORT_CONFIG_FULL_DUPLEX_ENABLED)
   reg |= PHY_GIG_ADV_1000F;
  else
   reg |= PHY_GIG_ADV_1000H;
 }

 ql_mii_write_reg_ex(qdev, PHY_GIG_CONTROL, reg,
       PHYAddr[qdev->mac_index]);


 ql_mii_read_reg_ex(qdev, PHY_NEG_ADVER, &reg,
      PHYAddr[qdev->mac_index]);
 reg &= ~PHY_NEG_ALL_PARAMS;

 if (portConfiguration & PORT_CONFIG_SYM_PAUSE_ENABLED)
  reg |= PHY_NEG_ASY_PAUSE | PHY_NEG_SYM_PAUSE;

 if (portConfiguration & PORT_CONFIG_FULL_DUPLEX_ENABLED) {
  if (portConfiguration & PORT_CONFIG_100MB_SPEED)
   reg |= PHY_NEG_ADV_100F;

  if (portConfiguration & PORT_CONFIG_10MB_SPEED)
   reg |= PHY_NEG_ADV_10F;
 }

 if (portConfiguration & PORT_CONFIG_HALF_DUPLEX_ENABLED) {
  if (portConfiguration & PORT_CONFIG_100MB_SPEED)
   reg |= PHY_NEG_ADV_100H;

  if (portConfiguration & PORT_CONFIG_10MB_SPEED)
   reg |= PHY_NEG_ADV_10H;
 }

 if (portConfiguration & PORT_CONFIG_1000MB_SPEED)
  reg |= 1;

 ql_mii_write_reg_ex(qdev, PHY_NEG_ADVER, reg,
       PHYAddr[qdev->mac_index]);

 ql_mii_read_reg_ex(qdev, CONTROL_REG, &reg, PHYAddr[qdev->mac_index]);

 ql_mii_write_reg_ex(qdev, CONTROL_REG,
       reg | PHY_CTRL_RESTART_NEG | PHY_CTRL_AUTO_NEG,
       PHYAddr[qdev->mac_index]);
}
