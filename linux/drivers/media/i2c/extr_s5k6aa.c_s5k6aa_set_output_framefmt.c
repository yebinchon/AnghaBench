
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
struct s5k6aa_preset {int index; TYPE_1__ mbus_fmt; } ;
struct s5k6aa {int sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {int reg_p_fmt; } ;


 int REG_P_FMT (int ) ;
 int REG_P_OUT_HEIGHT (int ) ;
 int REG_P_OUT_WIDTH (int ) ;
 TYPE_2__* s5k6aa_formats ;
 int s5k6aa_get_pixfmt_index (struct s5k6aa*,TYPE_1__*) ;
 int s5k6aa_write (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_set_output_framefmt(struct s5k6aa *s5k6aa,
          struct s5k6aa_preset *preset)
{
 struct i2c_client *client = v4l2_get_subdevdata(&s5k6aa->sd);
 int fmt_index = s5k6aa_get_pixfmt_index(s5k6aa, &preset->mbus_fmt);
 int ret;

 ret = s5k6aa_write(client, REG_P_OUT_WIDTH(preset->index),
      preset->mbus_fmt.width);
 if (!ret)
  ret = s5k6aa_write(client, REG_P_OUT_HEIGHT(preset->index),
       preset->mbus_fmt.height);
 if (!ret)
  ret = s5k6aa_write(client, REG_P_FMT(preset->index),
       s5k6aa_formats[fmt_index].reg_p_fmt);
 return ret;
}
