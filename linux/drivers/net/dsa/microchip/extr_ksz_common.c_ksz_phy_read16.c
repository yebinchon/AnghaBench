
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ksz_device {TYPE_1__* dev_ops; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct TYPE_2__ {int (* r_phy ) (struct ksz_device*,int,int,int*) ;} ;


 int stub1 (struct ksz_device*,int,int,int*) ;

int ksz_phy_read16(struct dsa_switch *ds, int addr, int reg)
{
 struct ksz_device *dev = ds->priv;
 u16 val = 0xffff;

 dev->dev_ops->r_phy(dev, addr, reg, &val);

 return val;
}
