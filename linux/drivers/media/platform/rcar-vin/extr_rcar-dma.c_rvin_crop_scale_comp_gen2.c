
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int field; int height; int width; } ;
struct TYPE_5__ {int height; int width; int top; int left; } ;
struct TYPE_4__ {int height; int width; } ;
struct rvin_dev {TYPE_3__ format; TYPE_2__ crop; TYPE_1__ compose; } ;





 int VNELPOC_REG ;
 int VNEPPOC_REG ;
 int VNSLPOC_REG ;
 int VNSPPOC_REG ;
 int VNXS_REG ;
 int VNYS_REG ;
 int rvin_set_coeff (struct rvin_dev*,int) ;
 int rvin_write (struct rvin_dev*,int,int ) ;
 int vin_dbg (struct rvin_dev*,char*,int,int,int ,int ,int,int,int ,int,int ,int ) ;

__attribute__((used)) static void rvin_crop_scale_comp_gen2(struct rvin_dev *vin)
{
 u32 xs, ys;


 ys = 0;
 if (vin->crop.height != vin->compose.height)
  ys = (4096 * vin->crop.height) / vin->compose.height;
 rvin_write(vin, ys, VNYS_REG);

 xs = 0;
 if (vin->crop.width != vin->compose.width)
  xs = (4096 * vin->crop.width) / vin->compose.width;


 if (xs > 0 && xs < 2048)
  xs = 2048;

 rvin_write(vin, xs, VNXS_REG);


 if (xs < 4096)
  xs *= 2;

 rvin_set_coeff(vin, xs);


 rvin_write(vin, 0, VNSPPOC_REG);
 rvin_write(vin, 0, VNSLPOC_REG);
 rvin_write(vin, vin->format.width - 1, VNEPPOC_REG);
 switch (vin->format.field) {
 case 130:
 case 128:
 case 129:
  rvin_write(vin, vin->format.height / 2 - 1, VNELPOC_REG);
  break;
 default:
  rvin_write(vin, vin->format.height - 1, VNELPOC_REG);
  break;
 }

 vin_dbg(vin,
  "Pre-Clip: %ux%u@%u:%u YS: %d XS: %d Post-Clip: %ux%u@%u:%u\n",
  vin->crop.width, vin->crop.height, vin->crop.left,
  vin->crop.top, ys, xs, vin->format.width, vin->format.height,
  0, 0);
}
