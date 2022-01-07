
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* smi_ops; } ;
struct TYPE_2__ {int (* write ) (struct mv88e6xxx_chip*,int,int,int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mv88e6xxx_chip*,int,int,int ) ;

__attribute__((used)) static inline int mv88e6xxx_smi_write(struct mv88e6xxx_chip *chip,
          int dev, int reg, u16 data)
{
 if (chip->smi_ops && chip->smi_ops->write)
  return chip->smi_ops->write(chip, dev, reg, data);

 return -EOPNOTSUPP;
}
