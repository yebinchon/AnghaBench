
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {int* sw_status; TYPE_1__ c; } ;


 int BTTV_MAX ;
 int bttv_I2CWrite (struct bttv*,int,int,int,int) ;
 int gpio_inout (int,int) ;
 int gpio_write (int) ;
 int gv800s_write (struct bttv*,int,int,int) ;
 struct bttv** master ;

__attribute__((used)) static void gv800s_init(struct bttv *btv)
{
 int ix;

 gpio_inout(0xf107f, 0xf107f);
 gpio_write(1<<19);
 gpio_write(0);


 for (ix = 0; ix < 4; ix++) {
  btv->sw_status[ix] = ix;
  gv800s_write(btv, ix, ix, 1);
 }


 bttv_I2CWrite(btv, 0x18, 0x5, 0x90, 1);

 if (btv->c.nr > BTTV_MAX-4)
  return;




 master[btv->c.nr] = btv;
 master[btv->c.nr+1] = btv;
 master[btv->c.nr+2] = btv;
 master[btv->c.nr+3] = btv;
}
