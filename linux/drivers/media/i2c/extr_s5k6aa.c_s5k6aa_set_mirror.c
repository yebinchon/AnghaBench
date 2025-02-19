
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* vflip; } ;
struct s5k6aa {unsigned int inv_vflip; int inv_hflip; TYPE_3__ ctrls; TYPE_1__* preset; int sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_5__ {unsigned int val; } ;
struct TYPE_4__ {int index; } ;


 int REG_P_PREV_MIRROR (int) ;
 int s5k6aa_write (struct i2c_client*,int ,unsigned int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_set_mirror(struct s5k6aa *s5k6aa, int horiz_flip)
{
 struct i2c_client *client = v4l2_get_subdevdata(&s5k6aa->sd);
 int index = s5k6aa->preset->index;

 unsigned int vflip = s5k6aa->ctrls.vflip->val ^ s5k6aa->inv_vflip;
 unsigned int flip = (horiz_flip ^ s5k6aa->inv_hflip) | (vflip << 1);

 return s5k6aa_write(client, REG_P_PREV_MIRROR(index), flip);
}
