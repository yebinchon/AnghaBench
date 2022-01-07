
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_mbus_framefmt {int code; } ;
struct ov5640_dev {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int OV5640_FMT_MUX_RAW_DPC ;
 int OV5640_FMT_MUX_RGB ;
 int OV5640_FMT_MUX_YUV422 ;
 int OV5640_REG_FORMAT_CONTROL00 ;
 int OV5640_REG_ISP_FORMAT_MUX_CTRL ;
 int OV5640_REG_SYS_CLOCK_ENABLE02 ;
 int OV5640_REG_SYS_RESET02 ;
 int OV5640_REG_TIMING_TC_REG21 ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int,int) ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_framefmt(struct ov5640_dev *sensor,
          struct v4l2_mbus_framefmt *format)
{
 int ret = 0;
 bool is_jpeg = 0;
 u8 fmt, mux;

 switch (format->code) {
 case 129:

  fmt = 0x3f;
  mux = OV5640_FMT_MUX_YUV422;
  break;
 case 128:

  fmt = 0x30;
  mux = OV5640_FMT_MUX_YUV422;
  break;
 case 134:

  fmt = 0x6F;
  mux = OV5640_FMT_MUX_RGB;
  break;
 case 135:

  fmt = 0x61;
  mux = OV5640_FMT_MUX_RGB;
  break;
 case 136:

  fmt = 0x30;
  mux = OV5640_FMT_MUX_YUV422;
  is_jpeg = 1;
  break;
 case 133:

  fmt = 0x00;
  mux = OV5640_FMT_MUX_RAW_DPC;
  break;
 case 132:

  fmt = 0x01;
  mux = OV5640_FMT_MUX_RAW_DPC;
  break;
 case 131:

  fmt = 0x02;
  mux = OV5640_FMT_MUX_RAW_DPC;
  break;
 case 130:

  fmt = 0x03;
  mux = OV5640_FMT_MUX_RAW_DPC;
  break;
 default:
  return -EINVAL;
 }


 ret = ov5640_write_reg(sensor, OV5640_REG_FORMAT_CONTROL00, fmt);
 if (ret)
  return ret;


 ret = ov5640_write_reg(sensor, OV5640_REG_ISP_FORMAT_MUX_CTRL, mux);
 if (ret)
  return ret;





 ret = ov5640_mod_reg(sensor, OV5640_REG_TIMING_TC_REG21,
        BIT(5), is_jpeg ? BIT(5) : 0);
 if (ret)
  return ret;







 ret = ov5640_mod_reg(sensor, OV5640_REG_SYS_RESET02,
        BIT(4) | BIT(3) | BIT(2),
        is_jpeg ? 0 : (BIT(4) | BIT(3) | BIT(2)));
 if (ret)
  return ret;






 return ov5640_mod_reg(sensor, OV5640_REG_SYS_CLOCK_ENABLE02,
         BIT(5) | BIT(3),
         is_jpeg ? (BIT(5) | BIT(3)) : 0);
}
