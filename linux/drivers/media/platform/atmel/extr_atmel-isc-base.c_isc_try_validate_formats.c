
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fourcc; TYPE_1__* sd_format; } ;
struct isc_device {int v4l2_dev; TYPE_2__ try_config; } ;
struct TYPE_3__ {int mbus_code; } ;


 int EINVAL ;
 int ISC_IS_FORMAT_RAW (int ) ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*,int,int,int,int) ;

__attribute__((used)) static int isc_try_validate_formats(struct isc_device *isc)
{
 int ret;
 bool bayer = 0, yuv = 0, rgb = 0, grey = 0;


 switch (isc->try_config.fourcc) {
 case 141:
 case 138:
 case 135:
 case 132:
 case 143:
 case 140:
 case 137:
 case 134:
 case 142:
 case 139:
 case 136:
 case 133:
  ret = 0;
  bayer = 1;
  break;

 case 130:
 case 129:
 case 128:
  ret = 0;
  yuv = 1;
  break;

 case 144:
 case 148:
 case 131:
 case 147:
 case 146:
  ret = 0;
  rgb = 1;
  break;
 case 145:
  ret = 0;
  grey = 1;
  break;
 default:

  ret = -EINVAL;
 }


 if ((bayer || grey) &&
     !ISC_IS_FORMAT_RAW(isc->try_config.sd_format->mbus_code))
  return -EINVAL;

 v4l2_dbg(1, debug, &isc->v4l2_dev,
   "Format validation, requested rgb=%u, yuv=%u, grey=%u, bayer=%u\n",
   rgb, yuv, grey, bayer);

 return ret;
}
