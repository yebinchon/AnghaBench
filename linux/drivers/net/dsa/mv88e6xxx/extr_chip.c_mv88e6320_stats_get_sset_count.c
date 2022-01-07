
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int STATS_TYPE_BANK0 ;
 int STATS_TYPE_BANK1 ;
 int mv88e6xxx_stats_get_sset_count (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static int mv88e6320_stats_get_sset_count(struct mv88e6xxx_chip *chip)
{
 return mv88e6xxx_stats_get_sset_count(chip, STATS_TYPE_BANK0 |
           STATS_TYPE_BANK1);
}
