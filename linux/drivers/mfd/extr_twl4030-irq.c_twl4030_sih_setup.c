
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sih_agent {int irq_base; scalar_t__ irq_name; int irq_lock; int imr; struct sih const* sih; } ;
struct sih {int module; int bits; int name; scalar_t__ set_cor; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_EARLY_RESUME ;
 int IRQF_ONESHOT ;
 int activate_irq (int) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ,int,int,int) ;
 int handle_edge_irq ;
 int handle_twl4030_sih ;
 int irq_set_chip_and_handler (int,int *,int ) ;
 int irq_set_chip_data (int,struct sih_agent*) ;
 int irq_set_handler_data (int,struct sih_agent*) ;
 int irq_set_nested_thread (int,int) ;
 scalar_t__ kasprintf (int ,char*,int ) ;
 struct sih_agent* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nr_sih_modules ;
 int request_threaded_irq (int,int *,int ,int,int ,int *) ;
 struct sih* sih_modules ;
 int twl4030_irq_base ;
 int twl4030_sih_irq_chip ;

int twl4030_sih_setup(struct device *dev, int module, int irq_base)
{
 int sih_mod;
 const struct sih *sih = ((void*)0);
 struct sih_agent *agent;
 int i, irq;
 int status = -EINVAL;


 for (sih_mod = 0, sih = sih_modules; sih_mod < nr_sih_modules;
   sih_mod++, sih++) {
  if (sih->module == module && sih->set_cor) {
   status = 0;
   break;
  }
 }

 if (status < 0) {
  dev_err(dev, "module to setup SIH for not found\n");
  return status;
 }

 agent = kzalloc(sizeof(*agent), GFP_KERNEL);
 if (!agent)
  return -ENOMEM;

 agent->irq_base = irq_base;
 agent->sih = sih;
 agent->imr = ~0;
 mutex_init(&agent->irq_lock);

 for (i = 0; i < sih->bits; i++) {
  irq = irq_base + i;

  irq_set_chip_data(irq, agent);
  irq_set_chip_and_handler(irq, &twl4030_sih_irq_chip,
      handle_edge_irq);
  irq_set_nested_thread(irq, 1);
  activate_irq(irq);
 }


 irq = sih_mod + twl4030_irq_base;
 irq_set_handler_data(irq, agent);
 agent->irq_name = kasprintf(GFP_KERNEL, "twl4030_%s", sih->name);
 status = request_threaded_irq(irq, ((void*)0), handle_twl4030_sih,
          IRQF_EARLY_RESUME | IRQF_ONESHOT,
          agent->irq_name ?: sih->name, ((void*)0));

 dev_info(dev, "%s (irq %d) chaining IRQs %d..%d\n", sih->name,
   irq, irq_base, irq_base + i - 1);

 return status < 0 ? status : irq_base;
}
