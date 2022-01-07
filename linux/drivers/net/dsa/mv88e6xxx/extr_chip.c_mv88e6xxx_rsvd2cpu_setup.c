
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* mgmt_rsvd2cpu ) (struct mv88e6xxx_chip*) ;} ;


 int stub1 (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_rsvd2cpu_setup(struct mv88e6xxx_chip *chip)
{
 if (chip->info->ops->mgmt_rsvd2cpu)
  return chip->info->ops->mgmt_rsvd2cpu(chip);

 return 0;
}
