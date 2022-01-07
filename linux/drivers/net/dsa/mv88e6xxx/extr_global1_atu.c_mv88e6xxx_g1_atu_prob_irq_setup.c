
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;
struct mv88e6xxx_chip {scalar_t__ atu_prob_irq; TYPE_1__ g1_irq; } ;


 int IRQF_ONESHOT ;
 int MV88E6XXX_G1_STS_IRQ_ATU_PROB ;
 int irq_dispose_mapping (int) ;
 scalar_t__ irq_find_mapping (int ,int ) ;
 int mv88e6xxx_g1_atu_prob_irq_thread_fn ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct mv88e6xxx_chip*) ;

int mv88e6xxx_g1_atu_prob_irq_setup(struct mv88e6xxx_chip *chip)
{
 int err;

 chip->atu_prob_irq = irq_find_mapping(chip->g1_irq.domain,
           MV88E6XXX_G1_STS_IRQ_ATU_PROB);
 if (chip->atu_prob_irq < 0)
  return chip->atu_prob_irq;

 err = request_threaded_irq(chip->atu_prob_irq, ((void*)0),
       mv88e6xxx_g1_atu_prob_irq_thread_fn,
       IRQF_ONESHOT, "mv88e6xxx-g1-atu-prob",
       chip);
 if (err)
  irq_dispose_mapping(chip->atu_prob_irq);

 return err;
}
