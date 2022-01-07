
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994 {int dev; int supplies; int num_supplies; } ;


 int mfd_remove_devices (int ) ;
 int pm_runtime_disable (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_free (int ,int ) ;
 int wm8994_irq_exit (struct wm8994*) ;

__attribute__((used)) static void wm8994_device_exit(struct wm8994 *wm8994)
{
 pm_runtime_disable(wm8994->dev);
 wm8994_irq_exit(wm8994);
 regulator_bulk_disable(wm8994->num_supplies, wm8994->supplies);
 regulator_bulk_free(wm8994->num_supplies, wm8994->supplies);
 mfd_remove_devices(wm8994->dev);
}
