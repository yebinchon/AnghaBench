
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt9m111 {TYPE_1__* ctx; int subdev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int read_mode; } ;


 int mt9m111_reg_clear (struct i2c_client*,int ,int) ;
 int mt9m111_reg_set (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_set_flip(struct mt9m111 *mt9m111, int flip, int mask)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);
 int ret;

 if (flip)
  ret = mt9m111_reg_set(client, mt9m111->ctx->read_mode, mask);
 else
  ret = mt9m111_reg_clear(client, mt9m111->ctx->read_mode, mask);

 return ret;
}
