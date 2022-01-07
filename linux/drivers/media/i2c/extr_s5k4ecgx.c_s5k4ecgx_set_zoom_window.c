
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int top; int left; int height; int width; } ;
struct i2c_client {int dummy; } ;


 int REG_G_CAPZOOM_IN_HEIGHT ;
 int REG_G_CAPZOOM_IN_WIDTH ;
 int REG_G_CAPZOOM_IN_XOFFS ;
 int REG_G_CAPZOOM_IN_YOFFS ;
 int REG_G_PREVZOOM_IN_HEIGHT ;
 int REG_G_PREVZOOM_IN_WIDTH ;
 int REG_G_PREVZOOM_IN_XOFFS ;
 int REG_G_PREVZOOM_IN_YOFFS ;
 int s5k4ecgx_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int s5k4ecgx_set_zoom_window(struct i2c_client *c,
        const struct v4l2_rect *r)
{
 int ret;

 ret = s5k4ecgx_write(c, REG_G_PREVZOOM_IN_WIDTH, r->width);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_PREVZOOM_IN_HEIGHT, r->height);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_PREVZOOM_IN_XOFFS, r->left);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_PREVZOOM_IN_YOFFS, r->top);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_CAPZOOM_IN_WIDTH, r->width);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_CAPZOOM_IN_HEIGHT, r->height);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_CAPZOOM_IN_XOFFS, r->left);
 if (!ret)
  ret = s5k4ecgx_write(c, REG_G_CAPZOOM_IN_YOFFS, r->top);

 return ret;
}
