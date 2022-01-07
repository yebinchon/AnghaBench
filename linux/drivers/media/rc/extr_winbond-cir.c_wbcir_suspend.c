
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {int led; } ;
struct pnp_dev {int dummy; } ;
typedef int pm_message_t ;


 int led_classdev_suspend (int *) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int wbcir_shutdown (struct pnp_dev*) ;

__attribute__((used)) static int
wbcir_suspend(struct pnp_dev *device, pm_message_t state)
{
 struct wbcir_data *data = pnp_get_drvdata(device);
 led_classdev_suspend(&data->led);
 wbcir_shutdown(device);
 return 0;
}
