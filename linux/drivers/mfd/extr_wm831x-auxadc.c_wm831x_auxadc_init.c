
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int * auxadc_read; int dev; scalar_t__ irq; int auxadc_pending; int auxadc_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int IRQF_ONESHOT ;
 int WM831X_IRQ_AUXADC_DATA ;
 int dev_err (int ,char*,int) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int ,int *,int ,int ,char*,struct wm831x*) ;
 int wm831x_auxadc_irq ;
 int * wm831x_auxadc_read_irq ;
 int * wm831x_auxadc_read_polled ;
 int wm831x_irq (struct wm831x*,int ) ;

void wm831x_auxadc_init(struct wm831x *wm831x)
{
 int ret;

 mutex_init(&wm831x->auxadc_lock);
 INIT_LIST_HEAD(&wm831x->auxadc_pending);

 if (wm831x->irq) {
  wm831x->auxadc_read = wm831x_auxadc_read_irq;

  ret = request_threaded_irq(wm831x_irq(wm831x,
            WM831X_IRQ_AUXADC_DATA),
        ((void*)0), wm831x_auxadc_irq,
        IRQF_ONESHOT,
        "auxadc", wm831x);
  if (ret < 0) {
   dev_err(wm831x->dev, "AUXADC IRQ request failed: %d\n",
    ret);
   wm831x->auxadc_read = ((void*)0);
  }
 }

 if (!wm831x->auxadc_read)
  wm831x->auxadc_read = wm831x_auxadc_read_polled;
}
