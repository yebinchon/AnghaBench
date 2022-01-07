
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {int devno; struct em28xx* dev_next; int name; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EM28XX_MAXBOARDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_warn (int *,char*,int) ;
 int em28xx_devused ;
 int find_first_zero_bit (int ,int) ;
 int kfree (struct em28xx*) ;
 struct em28xx* kmemdup (struct em28xx*,int,int ) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static int em28xx_duplicate_dev(struct em28xx *dev)
{
 int nr;
 struct em28xx *sec_dev = kmemdup(dev, sizeof(*sec_dev), GFP_KERNEL);

 if (!sec_dev) {
  dev->dev_next = ((void*)0);
  return -ENOMEM;
 }

 do {
  nr = find_first_zero_bit(em28xx_devused, EM28XX_MAXBOARDS);
  if (nr >= EM28XX_MAXBOARDS) {

   dev_warn(&dev->intf->dev, ": Supports only %i em28xx boards.\n",
     EM28XX_MAXBOARDS);
   kfree(sec_dev);
   dev->dev_next = ((void*)0);
   return -ENOMEM;
  }
 } while (test_and_set_bit(nr, em28xx_devused));
 sec_dev->devno = nr;
 snprintf(sec_dev->name, 28, "em28xx #%d", nr);
 sec_dev->dev_next = ((void*)0);
 dev->dev_next = sec_dev;
 return 0;
}
