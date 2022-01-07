
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;


 int BT848_GPIO_DATA ;
 int BT848_GPIO_OUT_EN ;
 unsigned int btread (int ) ;
 int pr_debug (char*,int ,unsigned int,unsigned int,unsigned int,char*) ;

void bttv_gpio_tracking(struct bttv *btv, char *comment)
{
 unsigned int outbits, data;
 outbits = btread(BT848_GPIO_OUT_EN);
 data = btread(BT848_GPIO_DATA);
 pr_debug("%d: gpio: en=%08x, out=%08x in=%08x [%s]\n",
   btv->c.nr, outbits, data & outbits, data & ~outbits, comment);
}
