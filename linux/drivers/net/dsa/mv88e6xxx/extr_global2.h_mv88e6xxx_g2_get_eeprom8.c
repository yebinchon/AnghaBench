
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mv88e6xxx_g2_get_eeprom8(struct mv88e6xxx_chip *chip,
        struct ethtool_eeprom *eeprom,
        u8 *data)
{
 return -EOPNOTSUPP;
}
