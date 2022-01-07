
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wm831x_pdata {scalar_t__ irq_cmos; scalar_t__ irq_base; } ;
struct wm831x {int* irq_masks_cur; int* irq_masks_cache; int irq; TYPE_1__* dev; struct irq_domain* irq_domain; int irq_lock; struct wm831x_pdata pdata; } ;
struct irq_domain {int dummy; } ;
struct TYPE_3__ {int of_node; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ WM831X_INTERRUPT_STATUS_1_MASK ;
 int WM831X_IRQ_CONFIG ;
 int WM831X_IRQ_OD ;
 int WM831X_NUM_IRQS ;
 scalar_t__ WM831X_SYSTEM_INTERRUPTS_MASK ;
 int dev_err (TYPE_1__*,char*,int,int) ;
 int dev_warn (TYPE_1__*,char*,...) ;
 int enable_irq_wake (int) ;
 int irq_alloc_descs (scalar_t__,int ,int ,int ) ;
 struct irq_domain* irq_domain_add_legacy (int ,int,int,int ,int *,struct wm831x*) ;
 struct irq_domain* irq_domain_add_linear (int ,int,int *,struct wm831x*) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct wm831x*) ;
 int wm831x_irq_domain_ops ;
 int wm831x_irq_thread ;
 int* wm831x_irqs ;
 int wm831x_reg_write (struct wm831x*,scalar_t__,int) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

int wm831x_irq_init(struct wm831x *wm831x, int irq)
{
 struct wm831x_pdata *pdata = &wm831x->pdata;
 struct irq_domain *domain;
 int i, ret, irq_base;

 mutex_init(&wm831x->irq_lock);


 for (i = 0; i < ARRAY_SIZE(wm831x->irq_masks_cur); i++) {
  wm831x->irq_masks_cur[i] = 0xffff;
  wm831x->irq_masks_cache[i] = 0xffff;
  wm831x_reg_write(wm831x, WM831X_INTERRUPT_STATUS_1_MASK + i,
     0xffff);
 }


 if (pdata->irq_base) {
  irq_base = irq_alloc_descs(pdata->irq_base, 0,
        WM831X_NUM_IRQS, 0);
  if (irq_base < 0) {
   dev_warn(wm831x->dev, "Failed to allocate IRQs: %d\n",
     irq_base);
   irq_base = 0;
  }
 } else {
  irq_base = 0;
 }

 if (irq_base)
  domain = irq_domain_add_legacy(wm831x->dev->of_node,
            ARRAY_SIZE(wm831x_irqs),
            irq_base, 0,
            &wm831x_irq_domain_ops,
            wm831x);
 else
  domain = irq_domain_add_linear(wm831x->dev->of_node,
            ARRAY_SIZE(wm831x_irqs),
            &wm831x_irq_domain_ops,
            wm831x);

 if (!domain) {
  dev_warn(wm831x->dev, "Failed to allocate IRQ domain\n");
  return -EINVAL;
 }

 if (pdata->irq_cmos)
  i = 0;
 else
  i = WM831X_IRQ_OD;

 wm831x_set_bits(wm831x, WM831X_IRQ_CONFIG,
   WM831X_IRQ_OD, i);

 wm831x->irq = irq;
 wm831x->irq_domain = domain;

 if (irq) {





  ret = enable_irq_wake(irq);
  if (ret != 0) {
   dev_warn(wm831x->dev,
     "Can't enable IRQ as wake source: %d\n",
     ret);
  }

  ret = request_threaded_irq(irq, ((void*)0), wm831x_irq_thread,
        IRQF_TRIGGER_LOW | IRQF_ONESHOT,
        "wm831x", wm831x);
  if (ret != 0) {
   dev_err(wm831x->dev, "Failed to request IRQ %d: %d\n",
    irq, ret);
   return ret;
  }
 } else {
  dev_warn(wm831x->dev,
    "No interrupt specified - functionality limited\n");
 }


 wm831x_reg_write(wm831x, WM831X_SYSTEM_INTERRUPTS_MASK, 0);

 return 0;
}
