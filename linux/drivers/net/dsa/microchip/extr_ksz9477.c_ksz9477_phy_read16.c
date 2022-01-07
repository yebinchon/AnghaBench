
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int speed; } ;
struct ksz_port {TYPE_1__ phydev; } ;
struct ksz_device {int phy_port_cnt; struct ksz_port* ports; } ;
struct dsa_switch {struct ksz_device* priv; } ;
 int SPEED_1000 ;
 int ksz_pread16 (struct ksz_device*,int,int,int*) ;

__attribute__((used)) static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
{
 struct ksz_device *dev = ds->priv;
 u16 val = 0xffff;







 if (addr >= dev->phy_port_cnt) {
  struct ksz_port *p = &dev->ports[addr];

  switch (reg) {
  case 134:
   val = 0x1140;
   break;
  case 133:
   val = 0x796d;
   break;
  case 130:
   val = 0x0022;
   break;
  case 129:
   val = 0x1631;
   break;
  case 135:
   val = 0x05e1;
   break;
  case 131:
   val = 0xc5e1;
   break;
  case 132:
   val = 0x0700;
   break;
  case 128:
   if (p->phydev.speed == SPEED_1000)
    val = 0x3800;
   else
    val = 0;
   break;
  }
 } else {
  ksz_pread16(dev, addr, 0x100 + (reg << 1), &val);
 }

 return val;
}
