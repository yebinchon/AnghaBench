
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;


 int BT848_GPIO_DATA ;
 int BT848_GPIO_OUT_EN ;
 int btread (int ) ;
 int btwrite (long,int ) ;
 int msleep (int) ;
 int pr_info (char*,int ,...) ;

__attribute__((used)) static void
init_RTV24 (struct bttv *btv)
{
 uint32_t dataRead = 0;
 long watchdog_value = 0x0E;

 pr_info("%d: Adlink RTV-24 initialisation in progress ...\n",
  btv->c.nr);

 btwrite (0x00c3feff, BT848_GPIO_OUT_EN);

 btwrite (0 + watchdog_value, BT848_GPIO_DATA);
 msleep (1);
 btwrite (0x10 + watchdog_value, BT848_GPIO_DATA);
 msleep (10);
 btwrite (0 + watchdog_value, BT848_GPIO_DATA);

 dataRead = btread (BT848_GPIO_DATA);

 if ((((dataRead >> 18) & 0x01) != 0) || (((dataRead >> 19) & 0x01) != 1)) {
  pr_info("%d: Adlink RTV-24 initialisation(1) ERROR_CPLD_Check_Failed (read %d)\n",
   btv->c.nr, dataRead);
 }

 btwrite (0x4400 + watchdog_value, BT848_GPIO_DATA);
 msleep (10);
 btwrite (0x4410 + watchdog_value, BT848_GPIO_DATA);
 msleep (1);
 btwrite (watchdog_value, BT848_GPIO_DATA);
 msleep (1);
 dataRead = btread (BT848_GPIO_DATA);

 if ((((dataRead >> 18) & 0x01) != 0) || (((dataRead >> 19) & 0x01) != 0)) {
  pr_info("%d: Adlink RTV-24 initialisation(2) ERROR_CPLD_Check_Failed (read %d)\n",
   btv->c.nr, dataRead);

  return;
 }

 pr_info("%d: Adlink RTV-24 initialisation complete\n", btv->c.nr);
}
