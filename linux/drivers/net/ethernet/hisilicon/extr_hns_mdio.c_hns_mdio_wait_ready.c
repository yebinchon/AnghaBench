
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mii_bus {struct hns_mdio_device* priv; } ;
struct hns_mdio_device {int dummy; } ;


 int ETIMEDOUT ;
 int MDIO_CMD_START_B ;
 int MDIO_COMMAND_REG ;
 scalar_t__ MDIO_GET_REG_BIT (struct hns_mdio_device*,int ,int ) ;
 int MDIO_TIMEOUT ;

__attribute__((used)) static int hns_mdio_wait_ready(struct mii_bus *bus)
{
 struct hns_mdio_device *mdio_dev = bus->priv;
 u32 cmd_reg_value;
 int i;



 for (i = 0; i < MDIO_TIMEOUT; i++) {
  cmd_reg_value = MDIO_GET_REG_BIT(mdio_dev,
       MDIO_COMMAND_REG,
       MDIO_CMD_START_B);
  if (!cmd_reg_value)
   break;
 }
 if ((i == MDIO_TIMEOUT) && cmd_reg_value)
  return -ETIMEDOUT;

 return 0;
}
