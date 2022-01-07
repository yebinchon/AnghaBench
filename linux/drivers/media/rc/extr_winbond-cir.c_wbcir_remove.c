
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ sbase; scalar_t__ ebase; scalar_t__ wbase; int led; int dev; int irq; } ;
struct pnp_dev {int dummy; } ;


 int EHFUNC_IOMEM_LEN ;
 int LED_OFF ;
 int SP_IOMEM_LEN ;
 int WAKEUP_IOMEM_LEN ;
 int WBCIR_IRQ_NONE ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 scalar_t__ WBCIR_REG_WCEIR_STS ;
 int free_irq (int ,struct pnp_dev*) ;
 int kfree (struct wbcir_data*) ;
 int led_classdev_unregister (int *) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int pnp_set_drvdata (struct pnp_dev*,int *) ;
 int rc_unregister_device (int ) ;
 int release_region (scalar_t__,int ) ;
 int wbcir_led_brightness_set (int *,int ) ;
 int wbcir_set_bits (scalar_t__,int,int) ;
 int wbcir_set_irqmask (struct wbcir_data*,int ) ;

__attribute__((used)) static void
wbcir_remove(struct pnp_dev *device)
{
 struct wbcir_data *data = pnp_get_drvdata(device);


 wbcir_set_irqmask(data, WBCIR_IRQ_NONE);
 free_irq(data->irq, device);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL, 0x00, 0x01);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);

 rc_unregister_device(data->dev);

 led_classdev_unregister(&data->led);


 wbcir_led_brightness_set(&data->led, LED_OFF);

 release_region(data->wbase, WAKEUP_IOMEM_LEN);
 release_region(data->ebase, EHFUNC_IOMEM_LEN);
 release_region(data->sbase, SP_IOMEM_LEN);

 kfree(data);

 pnp_set_drvdata(device, ((void*)0));
}
