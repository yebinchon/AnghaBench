
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int EOPNOTSUPP ;
 int SPEED_MAX ;
 int mv88e6xxx_port_set_speed (struct mv88e6xxx_chip*,int,int,int,int) ;

int mv88e6065_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
{
 if (speed == SPEED_MAX)
  speed = 200;

 if (speed > 200)
  return -EOPNOTSUPP;


 return mv88e6xxx_port_set_speed(chip, port, speed, 0, 0);
}
