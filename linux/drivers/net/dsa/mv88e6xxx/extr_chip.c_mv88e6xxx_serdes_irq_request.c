
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_port {unsigned int serdes_irq; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_port* ports; } ;


 int IRQF_ONESHOT ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_serdes_irq_enable (struct mv88e6xxx_chip*,int,int ) ;
 unsigned int mv88e6xxx_serdes_irq_mapping (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_serdes_irq_thread_fn ;
 int request_threaded_irq (unsigned int,int *,int ,int ,char*,struct mv88e6xxx_port*) ;

__attribute__((used)) static int mv88e6xxx_serdes_irq_request(struct mv88e6xxx_chip *chip, int port,
     u8 lane)
{
 struct mv88e6xxx_port *dev_id = &chip->ports[port];
 unsigned int irq;
 int err;


 irq = mv88e6xxx_serdes_irq_mapping(chip, port);
 if (!irq)
  return 0;


 mv88e6xxx_reg_unlock(chip);
 err = request_threaded_irq(irq, ((void*)0), mv88e6xxx_serdes_irq_thread_fn,
       IRQF_ONESHOT, "mv88e6xxx-serdes", dev_id);
 mv88e6xxx_reg_lock(chip);
 if (err)
  return err;

 dev_id->serdes_irq = irq;

 return mv88e6xxx_serdes_irq_enable(chip, port, lane);
}
