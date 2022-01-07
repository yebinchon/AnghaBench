
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm1105_dev {size_t boardnr; } ;
struct TYPE_2__ {int gpio_scl; } ;


 TYPE_1__* dm1105_boards ;
 scalar_t__ dm1105_gpio_get (struct dm1105_dev*,int ) ;

__attribute__((used)) static int dm1105_getscl(void *data)
{
 struct dm1105_dev *dev = data;

 return dm1105_gpio_get(dev, dm1105_boards[dev->boardnr].gpio_scl)
         ? 1 : 0;
}
