
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_pdata {long irq_flags; int irq_gpio; } ;
struct wm8994 {scalar_t__ irq; int dev; int irq_data; scalar_t__ irq_base; int regmap; int edge_irq; struct wm8994_pdata pdata; } ;


 int GPIOF_IN ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_HIGH ;
 unsigned long IRQF_TRIGGER_RISING ;
 int WM8994_INTERRUPT_CONTROL ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,...) ;
 int devm_gpio_request_one (int ,int ,int ,char*) ;
 scalar_t__ gpio_to_irq (int ) ;
 scalar_t__ irq_create_mapping (int ,int ) ;
 int irq_domain_add_linear (int *,int,int *,struct wm8994*) ;
 int regmap_add_irq_chip (int ,scalar_t__,unsigned long,scalar_t__,int *,int *) ;
 int request_threaded_irq (scalar_t__,int *,int ,unsigned long,char*,struct wm8994*) ;
 int wm8994_edge_irq ;
 int wm8994_edge_irq_ops ;
 int wm8994_irq_chip ;
 int wm8994_reg_write (struct wm8994*,int ,int ) ;

int wm8994_irq_init(struct wm8994 *wm8994)
{
 int ret;
 unsigned long irqflags;
 struct wm8994_pdata *pdata = &wm8994->pdata;

 if (!wm8994->irq) {
  dev_warn(wm8994->dev,
    "No interrupt specified, no interrupts\n");
  wm8994->irq_base = 0;
  return 0;
 }


 irqflags = IRQF_TRIGGER_HIGH | IRQF_ONESHOT;
 if (pdata->irq_flags)
  irqflags = pdata->irq_flags;


 if (irqflags & (IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING)) {
  if (gpio_to_irq(pdata->irq_gpio) != wm8994->irq) {
   dev_warn(wm8994->dev, "IRQ %d is not GPIO %d (%d)\n",
     wm8994->irq, pdata->irq_gpio,
     gpio_to_irq(pdata->irq_gpio));
   wm8994->irq = gpio_to_irq(pdata->irq_gpio);
  }

  ret = devm_gpio_request_one(wm8994->dev, pdata->irq_gpio,
         GPIOF_IN, "WM8994 IRQ");

  if (ret != 0) {
   dev_err(wm8994->dev, "Failed to get IRQ GPIO: %d\n",
    ret);
   return ret;
  }

  wm8994->edge_irq = irq_domain_add_linear(((void*)0), 1,
        &wm8994_edge_irq_ops,
        wm8994);

  ret = regmap_add_irq_chip(wm8994->regmap,
       irq_create_mapping(wm8994->edge_irq,
            0),
       IRQF_ONESHOT,
       wm8994->irq_base, &wm8994_irq_chip,
       &wm8994->irq_data);
  if (ret != 0) {
   dev_err(wm8994->dev, "Failed to get IRQ: %d\n",
    ret);
   return ret;
  }

  ret = request_threaded_irq(wm8994->irq,
        ((void*)0), wm8994_edge_irq,
        irqflags,
        "WM8994 edge", wm8994);
 } else {
  ret = regmap_add_irq_chip(wm8994->regmap, wm8994->irq,
       irqflags,
       wm8994->irq_base, &wm8994_irq_chip,
       &wm8994->irq_data);
 }

 if (ret != 0) {
  dev_err(wm8994->dev, "Failed to register IRQ chip: %d\n", ret);
  return ret;
 }


 wm8994_reg_write(wm8994, WM8994_INTERRUPT_CONTROL, 0);

 return 0;
}
