
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* serdes_power ) (struct mv88e6xxx_chip*,int,int ,int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mv88e6xxx_chip*,int,int ,int) ;

__attribute__((used)) static inline int mv88e6xxx_serdes_power_down(struct mv88e6xxx_chip *chip,
           int port, u8 lane)
{
 if (!chip->info->ops->serdes_power)
  return -EOPNOTSUPP;

 return chip->info->ops->serdes_power(chip, port, lane, 0);
}
