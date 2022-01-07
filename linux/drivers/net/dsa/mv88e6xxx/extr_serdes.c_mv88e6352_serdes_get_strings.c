
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6352_serdes_hw_stat {int string; } ;


 int ARRAY_SIZE (struct mv88e6352_serdes_hw_stat*) ;
 int ETH_GSTRING_LEN ;
 int memcpy (int *,int ,int) ;
 int mv88e6352_port_has_serdes (struct mv88e6xxx_chip*,int) ;
 struct mv88e6352_serdes_hw_stat* mv88e6352_serdes_hw_stats ;

int mv88e6352_serdes_get_strings(struct mv88e6xxx_chip *chip,
     int port, uint8_t *data)
{
 struct mv88e6352_serdes_hw_stat *stat;
 int i;

 if (!mv88e6352_port_has_serdes(chip, port))
  return 0;

 for (i = 0; i < ARRAY_SIZE(mv88e6352_serdes_hw_stats); i++) {
  stat = &mv88e6352_serdes_hw_stats[i];
  memcpy(data + i * ETH_GSTRING_LEN, stat->string,
         ETH_GSTRING_LEN);
 }
 return ARRAY_SIZE(mv88e6352_serdes_hw_stats);
}
