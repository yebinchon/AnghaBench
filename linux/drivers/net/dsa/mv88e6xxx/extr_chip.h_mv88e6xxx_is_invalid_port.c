
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {int invalid_port_mask; } ;


 int BIT (int) ;

__attribute__((used)) static inline bool mv88e6xxx_is_invalid_port(struct mv88e6xxx_chip *chip, int port)
{
 return (chip->info->invalid_port_mask & BIT(port)) != 0;
}
