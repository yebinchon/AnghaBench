
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsc73xx {int dev; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int BIT (int) ;
 int EIO ;
 int VSC73XX_BLOCK_MII ;
 int dev_dbg (int ,char*,int,int,int) ;
 int dev_err (int ,char*,int,int) ;
 int msleep (int) ;
 int vsc73xx_read (struct vsc73xx*,int ,int ,int,int*) ;
 int vsc73xx_write (struct vsc73xx*,int ,int ,int,int) ;

__attribute__((used)) static int vsc73xx_phy_read(struct dsa_switch *ds, int phy, int regnum)
{
 struct vsc73xx *vsc = ds->priv;
 u32 cmd;
 u32 val;
 int ret;


 cmd = BIT(26) | (phy << 21) | (regnum << 16);
 ret = vsc73xx_write(vsc, VSC73XX_BLOCK_MII, 0, 1, cmd);
 if (ret)
  return ret;
 msleep(2);
 ret = vsc73xx_read(vsc, VSC73XX_BLOCK_MII, 0, 2, &val);
 if (ret)
  return ret;
 if (val & BIT(16)) {
  dev_err(vsc->dev, "reading reg %02x from phy%d failed\n",
   regnum, phy);
  return -EIO;
 }
 val &= 0xFFFFU;

 dev_dbg(vsc->dev, "read reg %02x from phy%d = %04x\n",
  regnum, phy, val);

 return val;
}
