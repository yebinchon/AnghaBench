
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {int sw_addr; struct mii_bus* bus; int * smi_ops; TYPE_1__* info; } ;
struct mii_bus {int dummy; } ;
struct TYPE_2__ {scalar_t__ multi_chip; scalar_t__ dual_chip; } ;


 int EINVAL ;
 int mv88e6xxx_smi_direct_ops ;
 int mv88e6xxx_smi_dual_direct_ops ;
 int mv88e6xxx_smi_indirect_ops ;

int mv88e6xxx_smi_init(struct mv88e6xxx_chip *chip,
         struct mii_bus *bus, int sw_addr)
{
 if (chip->info->dual_chip)
  chip->smi_ops = &mv88e6xxx_smi_dual_direct_ops;
 else if (sw_addr == 0)
  chip->smi_ops = &mv88e6xxx_smi_direct_ops;
 else if (chip->info->multi_chip)
  chip->smi_ops = &mv88e6xxx_smi_indirect_ops;
 else
  return -EINVAL;

 chip->bus = bus;
 chip->sw_addr = sw_addr;

 return 0;
}
