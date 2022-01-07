
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* serdes_get_lane ) (struct mv88e6xxx_chip*,int) ;} ;


 int stub1 (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static inline u8 mv88e6xxx_serdes_get_lane(struct mv88e6xxx_chip *chip,
        int port)
{
 if (!chip->info->ops->serdes_get_lane)
  return 0;

 return chip->info->ops->serdes_get_lane(chip, port);
}
