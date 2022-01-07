
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_serdes_get_lane (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_serdes_irq_free (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_serdes_irq_request (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_serdes_power_down (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_serdes_power_up (struct mv88e6xxx_chip*,int,int ) ;

__attribute__((used)) static int mv88e6xxx_serdes_power(struct mv88e6xxx_chip *chip, int port,
      bool on)
{
 u8 lane;
 int err;

 lane = mv88e6xxx_serdes_get_lane(chip, port);
 if (!lane)
  return 0;

 if (on) {
  err = mv88e6xxx_serdes_power_up(chip, port, lane);
  if (err)
   return err;

  err = mv88e6xxx_serdes_irq_request(chip, port, lane);
 } else {
  err = mv88e6xxx_serdes_irq_free(chip, port, lane);
  if (err)
   return err;

  err = mv88e6xxx_serdes_power_down(chip, port, lane);
 }

 return err;
}
