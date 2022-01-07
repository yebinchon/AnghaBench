
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct realtek_smi {int map; int dev; } ;


 int EINVAL ;
 int RTL8366RB_PHY_ACCESS_CTRL_REG ;
 int RTL8366RB_PHY_CTRL_WRITE ;
 int RTL8366RB_PHY_NO_MAX ;
 int RTL8366RB_PHY_NO_OFFSET ;
 int dev_dbg (int ,char*,int,int,int,int ) ;
 int regmap_write (int ,int,int ) ;

__attribute__((used)) static int rtl8366rb_phy_write(struct realtek_smi *smi, int phy, int regnum,
          u16 val)
{
 u32 reg;
 int ret;

 if (phy > RTL8366RB_PHY_NO_MAX)
  return -EINVAL;

 ret = regmap_write(smi->map, RTL8366RB_PHY_ACCESS_CTRL_REG,
      RTL8366RB_PHY_CTRL_WRITE);
 if (ret)
  return ret;

 reg = 0x8000 | (1 << (phy + RTL8366RB_PHY_NO_OFFSET)) | regnum;

 dev_dbg(smi->dev, "write PHY%d register 0x%04x @ %04x, val -> %04x\n",
  phy, regnum, reg, val);

 ret = regmap_write(smi->map, reg, val);
 if (ret)
  return ret;

 return 0;
}
