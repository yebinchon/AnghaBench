
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vsc73xx {int dev; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int BIT (int) ;
 int VSC73XX_BLOCK_MII ;
 int dev_dbg (int ,char*,int,int,int) ;
 int dev_info (int ,char*) ;
 int vsc73xx_write (struct vsc73xx*,int ,int ,int,int) ;

__attribute__((used)) static int vsc73xx_phy_write(struct dsa_switch *ds, int phy, int regnum,
        u16 val)
{
 struct vsc73xx *vsc = ds->priv;
 u32 cmd;
 int ret;







 if (regnum == 0 && (val & BIT(15))) {
  dev_info(vsc->dev, "reset PHY - disallowed\n");
  return 0;
 }

 cmd = (phy << 21) | (regnum << 16);
 ret = vsc73xx_write(vsc, VSC73XX_BLOCK_MII, 0, 1, cmd);
 if (ret)
  return ret;

 dev_dbg(vsc->dev, "write %04x to reg %02x in phy%d\n",
  val, regnum, phy);
 return 0;
}
