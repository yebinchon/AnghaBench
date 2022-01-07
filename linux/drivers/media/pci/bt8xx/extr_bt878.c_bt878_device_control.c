
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int highvals; int mask; } ;
struct TYPE_4__ {int enable; int mask; } ;
union dst_gpio_packet {int psize; TYPE_3__ rd; TYPE_2__ outp; TYPE_1__ enb; } ;
struct bt878 {int gpio_lock; int TS_Size; int bttv_nr; } ;






 int EINVAL ;
 int ERESTARTSYS ;
 int bttv_gpio_enable (int ,int ,int ) ;
 int bttv_read_gpio (int ,int *) ;
 int bttv_write_gpio (int ,int ,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int
bt878_device_control(struct bt878 *bt, unsigned int cmd, union dst_gpio_packet *mp)
{
 int retval;

 retval = 0;
 if (mutex_lock_interruptible(&bt->gpio_lock))
  return -ERESTARTSYS;

 switch (cmd) {
     case 131:

  retval = bttv_gpio_enable(bt->bttv_nr,
    mp->enb.mask,
    mp->enb.enable);
  break;
     case 128:

  retval = bttv_write_gpio(bt->bttv_nr,
    mp->outp.mask,
    mp->outp.highvals);

  break;
     case 130:

  retval = bttv_read_gpio(bt->bttv_nr, &mp->rd.value);

  break;
     case 129:

  bt->TS_Size = mp->psize;
  break;

     default:
  retval = -EINVAL;
  break;
 }
 mutex_unlock(&bt->gpio_lock);
 return retval;
}
