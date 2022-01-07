
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {int* sw_status; TYPE_1__ c; } ;


 int BTTV_MAX ;
 int gpio_inout (int,int) ;
 int gpio_write (int) ;
 int kodicom4400r_write (struct bttv*,int,int,int) ;
 struct bttv** master ;

__attribute__((used)) static void kodicom4400r_init(struct bttv *btv)
{
 int ix;

 gpio_inout(0x0003ff, 0x0003ff);
 gpio_write(1 << 9);
 gpio_write(0);

 for (ix = 0; ix < 4; ix++) {
  btv->sw_status[ix] = ix;
  kodicom4400r_write(btv, ix, ix, 1);
 }





 if ((btv->c.nr<1) || (btv->c.nr>BTTV_MAX-3))
     return;
 master[btv->c.nr-1] = btv;
 master[btv->c.nr] = btv;
 master[btv->c.nr+1] = btv;
 master[btv->c.nr+2] = btv;
}
