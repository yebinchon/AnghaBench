
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm1105_dev {size_t boardnr; } ;
struct TYPE_2__ {int gpio_sda; } ;


 TYPE_1__* dm1105_boards ;
 int dm1105_setline (struct dm1105_dev*,int ,int) ;

__attribute__((used)) static void dm1105_setsda(void *data, int state)
{
 struct dm1105_dev *dev = data;

 dm1105_setline(dev, dm1105_boards[dev->boardnr].gpio_sda, state);
}
