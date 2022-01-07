
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numerator; scalar_t__ denominator; } ;
struct video_i2c_data {int regmap; TYPE_1__ frame_interval; } ;


 unsigned int AMG88XX_FPSC_1FPS ;
 int AMG88XX_REG_FPSC ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int amg88xx_setup(struct video_i2c_data *data)
{
 unsigned int mask = AMG88XX_FPSC_1FPS;
 unsigned int val;

 if (data->frame_interval.numerator == data->frame_interval.denominator)
  val = mask;
 else
  val = 0;

 return regmap_update_bits(data->regmap, AMG88XX_REG_FPSC, mask, val);
}
