
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int BIT (int) ;
 int REG_SCALING_XSC ;
 int REG_SCALING_YSC ;
 int TEST_PATTTERN_0 ;
 int TEST_PATTTERN_1 ;
 int ov7670_update_bits (struct v4l2_subdev*,int ,int ,int ) ;

__attribute__((used)) static int ov7670_s_test_pattern(struct v4l2_subdev *sd, int value)
{
 int ret;

 ret = ov7670_update_bits(sd, REG_SCALING_XSC, TEST_PATTTERN_0,
    value & BIT(0) ? TEST_PATTTERN_0 : 0);
 if (ret)
  return ret;

 return ov7670_update_bits(sd, REG_SCALING_YSC, TEST_PATTTERN_1,
    value & BIT(1) ? TEST_PATTTERN_1 : 0);
}
