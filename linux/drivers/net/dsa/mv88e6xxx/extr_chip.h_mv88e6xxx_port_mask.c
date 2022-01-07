
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int GENMASK (scalar_t__,int ) ;
 scalar_t__ mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;

__attribute__((used)) static inline u16 mv88e6xxx_port_mask(struct mv88e6xxx_chip *chip)
{
 return GENMASK(mv88e6xxx_num_ports(chip) - 1, 0);
}
