
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan9303 {int phy_addr_base; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* phy_read ) (struct lan9303*,int,int ) ;} ;


 int MII_LAN911X_SPECIAL_MODES ;
 int dev_dbg (int ,char*,char*) ;
 int dev_err (int ,char*,int) ;
 int stub1 (struct lan9303*,int,int ) ;

__attribute__((used)) static int lan9303_detect_phy_setup(struct lan9303 *chip)
{
 int reg;
 reg = chip->ops->phy_read(chip, 3, MII_LAN911X_SPECIAL_MODES);
 if (reg < 0) {
  dev_err(chip->dev, "Failed to detect phy config: %d\n", reg);
  return reg;
 }

 chip->phy_addr_base = reg != 0 && reg != 0xffff;

 dev_dbg(chip->dev, "Phy setup '%s' detected\n",
  chip->phy_addr_base ? "1-2-3" : "0-1-2");

 return 0;
}
