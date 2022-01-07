
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i2c_adap; } ;
struct bttv {scalar_t__ i2c_rc; TYPE_1__ c; } ;


 int i2c_del_adapter (int *) ;

int fini_bttv_i2c(struct bttv *btv)
{
 if (btv->i2c_rc == 0)
  i2c_del_adapter(&btv->c.i2c_adap);

 return 0;
}
