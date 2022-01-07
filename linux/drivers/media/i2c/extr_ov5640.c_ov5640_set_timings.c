
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ov5640_mode_info {int vtot; int htot; int vact; int hact; } ;
struct TYPE_2__ {scalar_t__ code; } ;
struct ov5640_dev {TYPE_1__ fmt; } ;


 scalar_t__ MEDIA_BUS_FMT_JPEG_1X8 ;
 int OV5640_REG_TIMING_DVPHO ;
 int OV5640_REG_TIMING_DVPVO ;
 int OV5640_REG_TIMING_HTS ;
 int OV5640_REG_TIMING_VTS ;
 int ov5640_set_jpeg_timings (struct ov5640_dev*,struct ov5640_mode_info const*) ;
 int ov5640_write_reg16 (struct ov5640_dev*,int ,int ) ;

__attribute__((used)) static int ov5640_set_timings(struct ov5640_dev *sensor,
         const struct ov5640_mode_info *mode)
{
 int ret;

 if (sensor->fmt.code == MEDIA_BUS_FMT_JPEG_1X8) {
  ret = ov5640_set_jpeg_timings(sensor, mode);
  if (ret < 0)
   return ret;
 }

 ret = ov5640_write_reg16(sensor, OV5640_REG_TIMING_DVPHO, mode->hact);
 if (ret < 0)
  return ret;

 ret = ov5640_write_reg16(sensor, OV5640_REG_TIMING_DVPVO, mode->vact);
 if (ret < 0)
  return ret;

 ret = ov5640_write_reg16(sensor, OV5640_REG_TIMING_HTS, mode->htot);
 if (ret < 0)
  return ret;

 return ov5640_write_reg16(sensor, OV5640_REG_TIMING_VTS, mode->vtot);
}
