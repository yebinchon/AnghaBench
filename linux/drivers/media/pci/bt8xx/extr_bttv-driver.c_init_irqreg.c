
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; } ;
struct bttv {int triton1; scalar_t__ gpioirq; TYPE_1__ c; } ;
struct TYPE_4__ {scalar_t__ no_video; } ;


 int BT848_INT_FDSR ;
 int BT848_INT_FMTCHG ;
 int BT848_INT_GPINT ;
 int BT848_INT_HLOCK ;
 int BT848_INT_I2CDONE ;
 int BT848_INT_MASK ;
 int BT848_INT_OCERR ;
 int BT848_INT_RISCI ;
 int BT848_INT_SCERR ;
 int BT848_INT_STAT ;
 TYPE_2__* bttv_tvcards ;
 int btwrite (int,int ) ;
 scalar_t__ fdsr ;

__attribute__((used)) static void init_irqreg(struct bttv *btv)
{

 btwrite(0xfffffUL, BT848_INT_STAT);

 if (bttv_tvcards[btv->c.type].no_video) {

  btwrite(BT848_INT_I2CDONE,
   BT848_INT_MASK);
 } else {

  btwrite((btv->triton1) |
   (btv->gpioirq ? BT848_INT_GPINT : 0) |
   BT848_INT_SCERR |
   (fdsr ? BT848_INT_FDSR : 0) |
   BT848_INT_RISCI | BT848_INT_OCERR |
   BT848_INT_FMTCHG|BT848_INT_HLOCK|
   BT848_INT_I2CDONE,
   BT848_INT_MASK);
 }
}
