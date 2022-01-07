
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_SERDES_INT_ENABLE ;
 int MV88E6352_SERDES_INT_LINK_CHANGE ;
 int mv88e6352_serdes_write (struct mv88e6xxx_chip*,int ,int ) ;

int mv88e6352_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
    bool enable)
{
 u16 val = 0;

 if (enable)
  val |= MV88E6352_SERDES_INT_LINK_CHANGE;

 return mv88e6352_serdes_write(chip, MV88E6352_SERDES_INT_ENABLE, val);
}
