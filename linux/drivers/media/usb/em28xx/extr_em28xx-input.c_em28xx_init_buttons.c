
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct em28xx_button {scalar_t__ role; scalar_t__ reg_r; int reg_clearing; } ;
struct TYPE_3__ {struct em28xx_button* buttons; } ;
struct em28xx {size_t num_button_polling_addresses; scalar_t__* button_polling_addresses; int button_polling_interval; int buttons_query_work; int button_polling_last_values; TYPE_2__* intf; TYPE_1__ board; } ;
struct TYPE_4__ {int dev; } ;


 int EM28XX_BUTTONS_DEBOUNCED_QUERY_INTERVAL ;
 int EM28XX_BUTTONS_VOLATILE_QUERY_INTERVAL ;
 scalar_t__ EM28XX_BUTTON_ILLUMINATION ;
 scalar_t__ EM28XX_BUTTON_SNAPSHOT ;
 int EM28XX_LED_ILLUMINATION ;
 scalar_t__ EM28XX_NUM_BUTTON_ADDRESSES_MAX ;
 scalar_t__ EM28XX_NUM_BUTTON_ROLES ;
 int WARN_ONCE (int,char*) ;
 int dev_err (int *,char*) ;
 int em28xx_find_led (struct em28xx*,int ) ;
 scalar_t__ em28xx_register_snapshot_button (struct em28xx*) ;
 int memset (int ,int ,scalar_t__) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void em28xx_init_buttons(struct em28xx *dev)
{
 u8 i = 0, j = 0;
 bool addr_new = 0;

 dev->button_polling_interval = EM28XX_BUTTONS_DEBOUNCED_QUERY_INTERVAL;
 while (dev->board.buttons[i].role >= 0 &&
        dev->board.buttons[i].role < EM28XX_NUM_BUTTON_ROLES) {
  const struct em28xx_button *button = &dev->board.buttons[i];


  addr_new = 1;
  for (j = 0; j < dev->num_button_polling_addresses; j++) {
   if (button->reg_r == dev->button_polling_addresses[j]) {
    addr_new = 0;
    break;
   }
  }

  if (addr_new && dev->num_button_polling_addresses
        >= EM28XX_NUM_BUTTON_ADDRESSES_MAX) {
   WARN_ONCE(1, "BUG: maximum number of button polling addresses exceeded.");
   goto next_button;
  }

  if (button->role == EM28XX_BUTTON_SNAPSHOT) {

   if (em28xx_register_snapshot_button(dev) < 0)
    goto next_button;
  } else if (button->role == EM28XX_BUTTON_ILLUMINATION) {

   if (!em28xx_find_led(dev, EM28XX_LED_ILLUMINATION)) {
    dev_err(&dev->intf->dev,
     "BUG: illumination button defined, but no illumination LED.\n");
    goto next_button;
   }
  }

  if (addr_new) {
   unsigned int index = dev->num_button_polling_addresses;

   dev->button_polling_addresses[index] = button->reg_r;
   dev->num_button_polling_addresses++;
  }

  if (!button->reg_clearing)
   dev->button_polling_interval =
      EM28XX_BUTTONS_VOLATILE_QUERY_INTERVAL;
next_button:

  i++;
 }


 if (dev->num_button_polling_addresses) {
  memset(dev->button_polling_last_values, 0,
         EM28XX_NUM_BUTTON_ADDRESSES_MAX);
  schedule_delayed_work(&dev->buttons_query_work,
          msecs_to_jiffies(dev->button_polling_interval));
 }
}
