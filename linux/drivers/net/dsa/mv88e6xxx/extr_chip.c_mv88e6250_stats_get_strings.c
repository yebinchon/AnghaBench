
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mv88e6xxx_chip {int dummy; } ;


 int STATS_TYPE_BANK0 ;
 int mv88e6xxx_stats_get_strings (struct mv88e6xxx_chip*,int *,int ) ;

__attribute__((used)) static int mv88e6250_stats_get_strings(struct mv88e6xxx_chip *chip,
           uint8_t *data)
{
 return mv88e6xxx_stats_get_strings(chip, data, STATS_TYPE_BANK0);
}
