
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_STATS_OP ;
 int MV88E6XXX_G1_STATS_OP_BUSY ;
 int MV88E6XXX_G1_STATS_OP_CAPTURE_PORT ;
 int MV88E6XXX_G1_STATS_OP_HIST_RX_TX ;
 int mv88e6xxx_g1_stats_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6xxx_g1_stats_snapshot(struct mv88e6xxx_chip *chip, int port)
{
 int err;


 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_STATS_OP,
     MV88E6XXX_G1_STATS_OP_BUSY |
     MV88E6XXX_G1_STATS_OP_CAPTURE_PORT |
     MV88E6XXX_G1_STATS_OP_HIST_RX_TX | port);
 if (err)
  return err;


 return mv88e6xxx_g1_stats_wait(chip);
}
