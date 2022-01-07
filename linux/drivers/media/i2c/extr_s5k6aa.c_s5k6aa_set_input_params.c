
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int width; int height; int left; int top; } ;
struct s5k6aa {scalar_t__ apply_crop; struct v4l2_rect ccd_rect; int sd; } ;
struct i2c_client {int dummy; } ;


 int REG_G_INPUTS_CHANGE_REQ ;
 int REG_G_PREVZOOM_IN_HEIGHT ;
 int REG_G_PREVZOOM_IN_WIDTH ;
 int REG_G_PREVZOOM_IN_XOFFS ;
 int REG_G_PREVZOOM_IN_YOFFS ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_set_input_params(struct s5k6aa *s5k6aa)
{
 struct i2c_client *c = v4l2_get_subdevdata(&s5k6aa->sd);
 struct v4l2_rect *r = &s5k6aa->ccd_rect;
 int ret;

 ret = s5k6aa_write(c, REG_G_PREVZOOM_IN_WIDTH, r->width);
 if (!ret)
  ret = s5k6aa_write(c, REG_G_PREVZOOM_IN_HEIGHT, r->height);
 if (!ret)
  ret = s5k6aa_write(c, REG_G_PREVZOOM_IN_XOFFS, r->left);
 if (!ret)
  ret = s5k6aa_write(c, REG_G_PREVZOOM_IN_YOFFS, r->top);
 if (!ret)
  ret = s5k6aa_write(c, REG_G_INPUTS_CHANGE_REQ, 1);
 if (!ret)
  s5k6aa->apply_crop = 0;

 return ret;
}
