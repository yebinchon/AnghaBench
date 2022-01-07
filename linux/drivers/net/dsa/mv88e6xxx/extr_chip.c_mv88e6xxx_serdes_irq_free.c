
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_port {unsigned int serdes_irq; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_port* ports; } ;


 int free_irq (unsigned int,struct mv88e6xxx_port*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_serdes_irq_disable (struct mv88e6xxx_chip*,int,int ) ;

__attribute__((used)) static int mv88e6xxx_serdes_irq_free(struct mv88e6xxx_chip *chip, int port,
         u8 lane)
{
 struct mv88e6xxx_port *dev_id = &chip->ports[port];
 unsigned int irq = dev_id->serdes_irq;
 int err;


 if (!irq)
  return 0;

 err = mv88e6xxx_serdes_irq_disable(chip, port, lane);


 mv88e6xxx_reg_unlock(chip);
 free_irq(irq, dev_id);
 mv88e6xxx_reg_lock(chip);

 dev_id->serdes_irq = 0;

 return err;
}
