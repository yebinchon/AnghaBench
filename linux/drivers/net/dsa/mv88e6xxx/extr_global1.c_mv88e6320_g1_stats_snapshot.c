
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g1_stats_snapshot (struct mv88e6xxx_chip*,int) ;

int mv88e6320_g1_stats_snapshot(struct mv88e6xxx_chip *chip, int port)
{
 port = (port + 1) << 5;

 return mv88e6xxx_g1_stats_snapshot(chip, port);
}
