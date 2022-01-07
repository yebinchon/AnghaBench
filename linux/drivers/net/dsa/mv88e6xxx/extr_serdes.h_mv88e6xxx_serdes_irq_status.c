
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* serdes_irq_status ) (struct mv88e6xxx_chip*,int,int ) ;} ;


 int IRQ_NONE ;
 int stub1 (struct mv88e6xxx_chip*,int,int ) ;

__attribute__((used)) static inline irqreturn_t
mv88e6xxx_serdes_irq_status(struct mv88e6xxx_chip *chip, int port, u8 lane)
{
 if (!chip->info->ops->serdes_irq_status)
  return IRQ_NONE;

 return chip->info->ops->serdes_irq_status(chip, port, lane);
}
