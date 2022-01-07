
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* ds; } ;
struct TYPE_2__ {int index; } ;


 int EOPNOTSUPP ;
 int mv88e6xxx_g2_pvt_write (struct mv88e6xxx_chip*,int,int,int ) ;
 int mv88e6xxx_has_pvt (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_vlan (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static int mv88e6xxx_pvt_map(struct mv88e6xxx_chip *chip, int dev, int port)
{
 u16 pvlan = 0;

 if (!mv88e6xxx_has_pvt(chip))
  return -EOPNOTSUPP;


 if (dev != chip->ds->index)
  pvlan = mv88e6xxx_port_vlan(chip, dev, port);

 return mv88e6xxx_g2_pvt_write(chip, dev, port, pvlan);
}
