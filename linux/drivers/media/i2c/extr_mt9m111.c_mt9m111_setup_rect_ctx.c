
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {unsigned int width; unsigned int height; } ;
struct mt9m111_context {int reducer_ysize; int reducer_xsize; int reducer_yzoom; int reducer_xzoom; } ;
struct mt9m111 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int mt9m111_reg_write (struct i2c_client*,int ,unsigned int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_setup_rect_ctx(struct mt9m111 *mt9m111,
   struct mt9m111_context *ctx, struct v4l2_rect *rect,
   unsigned int width, unsigned int height)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 int ret = mt9m111_reg_write(client, ctx->reducer_xzoom, rect->width);
 if (!ret)
  ret = mt9m111_reg_write(client, ctx->reducer_yzoom, rect->height);
 if (!ret)
  ret = mt9m111_reg_write(client, ctx->reducer_xsize, width);
 if (!ret)
  ret = mt9m111_reg_write(client, ctx->reducer_ysize, height);
 return ret;
}
