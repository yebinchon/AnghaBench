
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sd {TYPE_2__* vflip; TYPE_1__* hflip; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int s5k83a_get_rotation (struct sd*,scalar_t__*) ;
 int s5k83a_set_flip_real (struct gspca_dev*,int,int) ;

__attribute__((used)) static int s5k83a_set_hvflip(struct gspca_dev *gspca_dev)
{
 int err;
 u8 reg;
 struct sd *sd = (struct sd *) gspca_dev;
 int hflip = sd->hflip->val;
 int vflip = sd->vflip->val;

 err = s5k83a_get_rotation(sd, &reg);
 if (err < 0)
  return err;
 if (reg) {
  hflip = !hflip;
  vflip = !vflip;
 }

 err = s5k83a_set_flip_real(gspca_dev, vflip, hflip);
 return err;
}
