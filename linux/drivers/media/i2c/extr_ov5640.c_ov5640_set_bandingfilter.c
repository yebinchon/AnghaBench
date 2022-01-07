
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5640_dev {int prev_sysclk; int prev_hts; } ;


 int EINVAL ;
 int OV5640_REG_AEC_B50_STEP ;
 int OV5640_REG_AEC_B60_STEP ;
 int OV5640_REG_AEC_CTRL0D ;
 int OV5640_REG_AEC_CTRL0E ;
 int ov5640_get_hts (struct ov5640_dev*) ;
 int ov5640_get_sysclk (struct ov5640_dev*) ;
 int ov5640_get_vts (struct ov5640_dev*) ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;
 int ov5640_write_reg16 (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_bandingfilter(struct ov5640_dev *sensor)
{
 u32 band_step60, max_band60, band_step50, max_band50, prev_vts;
 int ret;


 ret = ov5640_get_sysclk(sensor);
 if (ret < 0)
  return ret;
 if (ret == 0)
  return -EINVAL;
 sensor->prev_sysclk = ret;

 ret = ov5640_get_hts(sensor);
 if (ret < 0)
  return ret;
 if (ret == 0)
  return -EINVAL;
 sensor->prev_hts = ret;


 ret = ov5640_get_vts(sensor);
 if (ret < 0)
  return ret;
 prev_vts = ret;



 band_step60 = sensor->prev_sysclk * 100 / sensor->prev_hts * 100 / 120;
 ret = ov5640_write_reg16(sensor, OV5640_REG_AEC_B60_STEP, band_step60);
 if (ret)
  return ret;
 if (!band_step60)
  return -EINVAL;
 max_band60 = (int)((prev_vts - 4) / band_step60);
 ret = ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL0D, max_band60);
 if (ret)
  return ret;


 band_step50 = sensor->prev_sysclk * 100 / sensor->prev_hts;
 ret = ov5640_write_reg16(sensor, OV5640_REG_AEC_B50_STEP, band_step50);
 if (ret)
  return ret;
 if (!band_step50)
  return -EINVAL;
 max_band50 = (int)((prev_vts - 4) / band_step50);
 return ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL0E, max_band50);
}
