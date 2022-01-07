
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int code; } ;
struct ov2680_dev {TYPE_1__ fmt; } ;


 int BIT (int) ;
 int OV2680_REG_FORMAT1 ;
 int OV2680_REG_FORMAT2 ;
 int * ov2680_hv_flip_bayer_order ;
 int ov2680_read_reg (struct ov2680_dev*,int ,int*) ;

__attribute__((used)) static int ov2680_bayer_order(struct ov2680_dev *sensor)
{
 u32 format1;
 u32 format2;
 u32 hv_flip;
 int ret;

 ret = ov2680_read_reg(sensor, OV2680_REG_FORMAT1, &format1);
 if (ret < 0)
  return ret;

 ret = ov2680_read_reg(sensor, OV2680_REG_FORMAT2, &format2);
 if (ret < 0)
  return ret;

 hv_flip = (format2 & BIT(2) << 1) | (format1 & BIT(2));

 sensor->fmt.code = ov2680_hv_flip_bayer_order[hv_flip];

 return 0;
}
