
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9p031 {int dummy; } ;


 int MT9P031_OUTPUT_CONTROL_CEN ;
 int mt9p031_pll_disable (struct mt9p031*) ;
 int mt9p031_pll_enable (struct mt9p031*) ;
 int mt9p031_set_output_control (struct mt9p031*,int ,int ) ;
 int mt9p031_set_params (struct mt9p031*) ;
 struct mt9p031* to_mt9p031 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9p031_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct mt9p031 *mt9p031 = to_mt9p031(subdev);
 int ret;

 if (!enable) {

  ret = mt9p031_set_output_control(mt9p031,
       MT9P031_OUTPUT_CONTROL_CEN, 0);
  if (ret < 0)
   return ret;

  return mt9p031_pll_disable(mt9p031);
 }

 ret = mt9p031_set_params(mt9p031);
 if (ret < 0)
  return ret;


 ret = mt9p031_set_output_control(mt9p031, 0,
      MT9P031_OUTPUT_CONTROL_CEN);
 if (ret < 0)
  return ret;

 return mt9p031_pll_enable(mt9p031);
}
