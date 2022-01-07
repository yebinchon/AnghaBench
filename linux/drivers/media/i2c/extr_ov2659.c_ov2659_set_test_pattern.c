
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov2659 {int sd; } ;
struct i2c_client {int dummy; } ;


 int REG_PRE_ISP_CTRL00 ;
 int TEST_PATTERN_ENABLE ;
 int VERTICAL_COLOR_BAR_MASK ;
 int ov2659_read (struct i2c_client*,int ,int *) ;
 int ov2659_write (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov2659_set_test_pattern(struct ov2659 *ov2659, int value)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov2659->sd);
 int ret;
 u8 val;

 ret = ov2659_read(client, REG_PRE_ISP_CTRL00, &val);
 if (ret < 0)
  return ret;

 switch (value) {
 case 0:
  val &= ~TEST_PATTERN_ENABLE;
  break;
 case 1:
  val &= VERTICAL_COLOR_BAR_MASK;
  val |= TEST_PATTERN_ENABLE;
  break;
 }

 return ov2659_write(client, REG_PRE_ISP_CTRL00, val);
}
