
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111_context {int control; } ;
struct mt9m111 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int CONTEXT_CONTROL ;
 int reg_write (int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_set_context(struct mt9m111 *mt9m111,
          struct mt9m111_context *ctx)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 return reg_write(CONTEXT_CONTROL, ctx->control);
}
