
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_device {int phy_port_cnt; int features; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int GBIT_SUPPORT ;
 int MII_CTRL1000 ;
 int ksz_pwrite16 (struct ksz_device*,int,int,int ) ;

__attribute__((used)) static int ksz9477_phy_write16(struct dsa_switch *ds, int addr, int reg,
          u16 val)
{
 struct ksz_device *dev = ds->priv;


 if (addr >= dev->phy_port_cnt)
  return 0;


 if (!(dev->features & GBIT_SUPPORT) && reg == MII_CTRL1000)
  return 0;
 ksz_pwrite16(dev, addr, 0x100 + (reg << 1), val);

 return 0;
}
