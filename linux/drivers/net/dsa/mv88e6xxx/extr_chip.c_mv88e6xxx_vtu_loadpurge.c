
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6xxx_vtu_entry {int dummy; } ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* vtu_loadpurge ) (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ;

__attribute__((used)) static int mv88e6xxx_vtu_loadpurge(struct mv88e6xxx_chip *chip,
       struct mv88e6xxx_vtu_entry *entry)
{
 if (!chip->info->ops->vtu_loadpurge)
  return -EOPNOTSUPP;

 return chip->info->ops->vtu_loadpurge(chip, entry);
}
