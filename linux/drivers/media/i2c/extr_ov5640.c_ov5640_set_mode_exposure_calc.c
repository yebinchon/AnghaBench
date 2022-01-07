
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ov5640_mode_info {scalar_t__ id; int reg_data; } ;
struct ov5640_dev {int prev_sysclk; int ae_low; int ae_high; int prev_hts; int ae_target; } ;


 int EINVAL ;
 scalar_t__ OV5640_MODE_1080P_1920_1080 ;
 scalar_t__ OV5640_MODE_720P_1280_720 ;
 int OV5640_REG_AVG_READOUT ;
 int ov5640_get_binning (struct ov5640_dev*) ;
 int ov5640_get_exposure (struct ov5640_dev*) ;
 int ov5640_get_gain (struct ov5640_dev*) ;
 int ov5640_get_hts (struct ov5640_dev*) ;
 int ov5640_get_light_freq (struct ov5640_dev*) ;
 int ov5640_get_sysclk (struct ov5640_dev*) ;
 int ov5640_get_vts (struct ov5640_dev*) ;
 int ov5640_load_regs (struct ov5640_dev*,struct ov5640_mode_info const*) ;
 int ov5640_read_reg (struct ov5640_dev*,int ,int*) ;
 int ov5640_set_exposure (struct ov5640_dev*,int) ;
 int ov5640_set_gain (struct ov5640_dev*,int) ;
 int ov5640_set_night_mode (struct ov5640_dev*) ;
 int ov5640_set_vts (struct ov5640_dev*,int) ;

__attribute__((used)) static int ov5640_set_mode_exposure_calc(struct ov5640_dev *sensor,
      const struct ov5640_mode_info *mode)
{
 u32 prev_shutter, prev_gain16;
 u32 cap_shutter, cap_gain16;
 u32 cap_sysclk, cap_hts, cap_vts;
 u32 light_freq, cap_bandfilt, cap_maxband;
 u32 cap_gain16_shutter;
 u8 average;
 int ret;

 if (!mode->reg_data)
  return -EINVAL;


 ret = ov5640_get_exposure(sensor);
 if (ret < 0)
  return ret;
 prev_shutter = ret;
 ret = ov5640_get_binning(sensor);
 if (ret < 0)
  return ret;
 if (ret && mode->id != OV5640_MODE_720P_1280_720 &&
     mode->id != OV5640_MODE_1080P_1920_1080)
  prev_shutter *= 2;


 ret = ov5640_get_gain(sensor);
 if (ret < 0)
  return ret;
 prev_gain16 = ret;


 ret = ov5640_read_reg(sensor, OV5640_REG_AVG_READOUT, &average);
 if (ret)
  return ret;


 ret = ov5640_set_night_mode(sensor);
 if (ret < 0)
  return ret;


 ret = ov5640_load_regs(sensor, mode);
 if (ret < 0)
  return ret;


 ret = ov5640_get_vts(sensor);
 if (ret < 0)
  return ret;
 cap_vts = ret;
 ret = ov5640_get_hts(sensor);
 if (ret < 0)
  return ret;
 if (ret == 0)
  return -EINVAL;
 cap_hts = ret;

 ret = ov5640_get_sysclk(sensor);
 if (ret < 0)
  return ret;
 if (ret == 0)
  return -EINVAL;
 cap_sysclk = ret;


 ret = ov5640_get_light_freq(sensor);
 if (ret < 0)
  return ret;
 light_freq = ret;

 if (light_freq == 60) {

  cap_bandfilt = cap_sysclk * 100 / cap_hts * 100 / 120;
 } else {

  cap_bandfilt = cap_sysclk * 100 / cap_hts;
 }

 if (!sensor->prev_sysclk) {
  ret = ov5640_get_sysclk(sensor);
  if (ret < 0)
   return ret;
  if (ret == 0)
   return -EINVAL;
  sensor->prev_sysclk = ret;
 }

 if (!cap_bandfilt)
  return -EINVAL;

 cap_maxband = (int)((cap_vts - 4) / cap_bandfilt);


 if (average > sensor->ae_low && average < sensor->ae_high) {

  cap_gain16_shutter =
   prev_gain16 * prev_shutter *
   cap_sysclk / sensor->prev_sysclk *
   sensor->prev_hts / cap_hts *
   sensor->ae_target / average;
 } else {
  cap_gain16_shutter =
   prev_gain16 * prev_shutter *
   cap_sysclk / sensor->prev_sysclk *
   sensor->prev_hts / cap_hts;
 }


 if (cap_gain16_shutter < (cap_bandfilt * 16)) {

  cap_shutter = cap_gain16_shutter / 16;
  if (cap_shutter < 1)
   cap_shutter = 1;

  cap_gain16 = cap_gain16_shutter / cap_shutter;
  if (cap_gain16 < 16)
   cap_gain16 = 16;
 } else {
  if (cap_gain16_shutter > (cap_bandfilt * cap_maxband * 16)) {

   cap_shutter = cap_bandfilt * cap_maxband;
   if (!cap_shutter)
    return -EINVAL;

   cap_gain16 = cap_gain16_shutter / cap_shutter;
  } else {

   cap_shutter =
    ((int)(cap_gain16_shutter / 16 / cap_bandfilt))
    * cap_bandfilt;
   if (!cap_shutter)
    return -EINVAL;

   cap_gain16 = cap_gain16_shutter / cap_shutter;
  }
 }


 ret = ov5640_set_gain(sensor, cap_gain16);
 if (ret)
  return ret;


 if (cap_shutter > (cap_vts - 4)) {
  cap_vts = cap_shutter + 4;
  ret = ov5640_set_vts(sensor, cap_vts);
  if (ret < 0)
   return ret;
 }


 return ov5640_set_exposure(sensor, cap_shutter);
}
