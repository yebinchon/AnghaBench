
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_STATS_OP_HIST_RX_TX ;
 int STATS_TYPE_BANK0 ;
 int STATS_TYPE_PORT ;
 int mv88e6xxx_stats_get_stats (struct mv88e6xxx_chip*,int,int *,int,int ,int ) ;

__attribute__((used)) static int mv88e6095_stats_get_stats(struct mv88e6xxx_chip *chip, int port,
         uint64_t *data)
{
 return mv88e6xxx_stats_get_stats(chip, port, data,
      STATS_TYPE_BANK0 | STATS_TYPE_PORT,
      0, MV88E6XXX_G1_STATS_OP_HIST_RX_TX);
}
