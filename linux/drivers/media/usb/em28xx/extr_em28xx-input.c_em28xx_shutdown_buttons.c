
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {int * sbutton_input_dev; TYPE_1__* intf; scalar_t__ num_button_polling_addresses; int buttons_query_work; } ;
struct TYPE_2__ {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_info (int *,char*) ;
 int input_unregister_device (int *) ;

__attribute__((used)) static void em28xx_shutdown_buttons(struct em28xx *dev)
{

 cancel_delayed_work_sync(&dev->buttons_query_work);

 dev->num_button_polling_addresses = 0;

 if (dev->sbutton_input_dev) {
  dev_info(&dev->intf->dev, "Deregistering snapshot button\n");
  input_unregister_device(dev->sbutton_input_dev);
  dev->sbutton_input_dev = ((void*)0);
 }
}
