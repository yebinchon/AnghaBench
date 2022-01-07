
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int domain; int masked; int chip; } ;
struct TYPE_5__ {int domain; } ;
struct mv88e6xxx_chip {int device_irq; TYPE_3__ g2_irq; TYPE_2__ g1_irq; TYPE_1__* dev; } ;
struct TYPE_4__ {int of_node; } ;


 int ENOMEM ;
 int IRQF_ONESHOT ;
 int MV88E6XXX_G1_STS_IRQ_DEVICE ;
 int irq_create_mapping (int ,int) ;
 int irq_dispose_mapping (int) ;
 int irq_domain_add_simple (int ,int,int ,int *,struct mv88e6xxx_chip*) ;
 int irq_domain_remove (int ) ;
 void* irq_find_mapping (int ,int) ;
 int mv88e6xxx_g2_irq_chip ;
 int mv88e6xxx_g2_irq_domain_ops ;
 int mv88e6xxx_g2_irq_thread_fn ;
 int mv88e6xxx_g2_watchdog_setup (struct mv88e6xxx_chip*) ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct mv88e6xxx_chip*) ;

int mv88e6xxx_g2_irq_setup(struct mv88e6xxx_chip *chip)
{
 int err, irq, virq;

 chip->g2_irq.domain = irq_domain_add_simple(
  chip->dev->of_node, 16, 0, &mv88e6xxx_g2_irq_domain_ops, chip);
 if (!chip->g2_irq.domain)
  return -ENOMEM;

 for (irq = 0; irq < 16; irq++)
  irq_create_mapping(chip->g2_irq.domain, irq);

 chip->g2_irq.chip = mv88e6xxx_g2_irq_chip;
 chip->g2_irq.masked = ~0;

 chip->device_irq = irq_find_mapping(chip->g1_irq.domain,
         MV88E6XXX_G1_STS_IRQ_DEVICE);
 if (chip->device_irq < 0) {
  err = chip->device_irq;
  goto out;
 }

 err = request_threaded_irq(chip->device_irq, ((void*)0),
       mv88e6xxx_g2_irq_thread_fn,
       IRQF_ONESHOT, "mv88e6xxx-g2", chip);
 if (err)
  goto out;

 return mv88e6xxx_g2_watchdog_setup(chip);

out:
 for (irq = 0; irq < 16; irq++) {
  virq = irq_find_mapping(chip->g2_irq.domain, irq);
  irq_dispose_mapping(virq);
 }

 irq_domain_remove(chip->g2_irq.domain);

 return err;
}
