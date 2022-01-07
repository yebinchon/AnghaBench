
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_3__* info; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* avb_ops; } ;
struct TYPE_4__ {int (* tai_write ) (struct mv88e6xxx_chip*,int,int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mv88e6xxx_chip*,int,int ) ;

__attribute__((used)) static int mv88e6xxx_tai_write(struct mv88e6xxx_chip *chip, int addr, u16 data)
{
 if (!chip->info->ops->avb_ops->tai_write)
  return -EOPNOTSUPP;

 return chip->info->ops->avb_ops->tai_write(chip, addr, data);
}
