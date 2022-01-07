
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9M111_TPG_CTRL ;
 int MT9M111_TPG_SEL_MASK ;
 int mt9m111_reg_mask (struct i2c_client*,int ,int,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9m111_set_test_pattern(struct mt9m111 *mt9m111, int val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);

 return mt9m111_reg_mask(client, MT9M111_TPG_CTRL, val,
    MT9M111_TPG_SEL_MASK);
}
