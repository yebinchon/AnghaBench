
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mdio_if_info {int (* mdio_read ) (int ,int,int,int ) ;int (* mdio_write ) (int ,int,int,int ,int) ;int dev; } ;


 int stub1 (int ,int,int,int ) ;
 int stub2 (int ,int,int,int ,int) ;

int mdio_set_flag(const struct mdio_if_info *mdio,
    int prtad, int devad, u16 addr, int mask,
    bool sense)
{
 int old_val = mdio->mdio_read(mdio->dev, prtad, devad, addr);
 int new_val;

 if (old_val < 0)
  return old_val;
 if (sense)
  new_val = old_val | mask;
 else
  new_val = old_val & ~mask;
 if (old_val == new_val)
  return 0;
 return mdio->mdio_write(mdio->dev, prtad, devad, addr, new_val);
}
