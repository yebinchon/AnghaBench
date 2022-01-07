
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mv88e6xxx_port {int port; struct mv88e6xxx_chip* chip; } ;
struct mv88e6xxx_chip {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 scalar_t__ mv88e6xxx_serdes_get_lane (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_serdes_irq_status (struct mv88e6xxx_chip*,int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mv88e6xxx_serdes_irq_thread_fn(int irq, void *dev_id)
{
 struct mv88e6xxx_port *mvp = dev_id;
 struct mv88e6xxx_chip *chip = mvp->chip;
 irqreturn_t ret = IRQ_NONE;
 int port = mvp->port;
 u8 lane;

 mv88e6xxx_reg_lock(chip);
 lane = mv88e6xxx_serdes_get_lane(chip, port);
 if (lane)
  ret = mv88e6xxx_serdes_irq_status(chip, port, lane);
 mv88e6xxx_reg_unlock(chip);

 return ret;
}
