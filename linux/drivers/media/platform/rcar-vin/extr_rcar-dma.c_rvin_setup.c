
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int field; int pixelformat; int width; int height; } ;
struct rvin_dev {int std; int mbus_code; scalar_t__ is_csi; TYPE_3__* info; TYPE_2__ format; int alpha; TYPE_1__* parallel; } ;
struct TYPE_6__ {scalar_t__ model; int use_mc; } ;
struct TYPE_4__ {int mbus_flags; int mbus_type; } ;


 int ALIGN (int,int) ;
 int EINVAL ;





 scalar_t__ RCAR_GEN3 ;






 int V4L2_MBUS_BT656 ;
 int V4L2_MBUS_DATA_ENABLE_LOW ;
 int V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int V4L2_STD_525_60 ;
 int VNDMR2_CES ;
 int VNDMR2_FTEV ;
 int VNDMR2_HPS ;
 int VNDMR2_REG ;
 int VNDMR2_VLV (int) ;
 int VNDMR2_VPS ;
 int VNDMR_A8BIT (int ) ;
 int VNDMR_ABIT ;
 int VNDMR_BPSM ;
 int VNDMR_DTMD_ARGB ;
 int VNDMR_DTMD_YCSEP ;
 int VNDMR_EXRGB ;
 int VNDMR_REG ;
 int VNIE_EFE ;
 int VNIE_FIE ;
 int VNIE_REG ;
 int VNINTS_REG ;
 int VNMC_BPS ;
 int VNMC_DPINE ;
 int VNMC_FOC ;
 int VNMC_IM_EVEN ;
 int VNMC_IM_FULL ;
 int VNMC_IM_ODD ;
 int VNMC_IM_ODD_EVEN ;
 int VNMC_INF_RGB888 ;
 int VNMC_INF_YUV10_BT601 ;
 int VNMC_INF_YUV10_BT656 ;
 int VNMC_INF_YUV16 ;
 int VNMC_INF_YUV8_BT601 ;
 int VNMC_INF_YUV8_BT656 ;
 int VNMC_ME ;
 int VNMC_REG ;
 int VNMC_VUP ;
 int VNMC_YCAL ;
 int VNUVAOF_REG ;
 int rvin_write (struct rvin_dev*,int,int ) ;
 int vin_err (struct rvin_dev*,char*,int) ;

__attribute__((used)) static int rvin_setup(struct rvin_dev *vin)
{
 u32 vnmc, dmr, dmr2, interrupts;
 bool progressive = 0, output_is_yuv = 0, input_is_yuv = 0;

 switch (vin->format.field) {
 case 136:
  vnmc = VNMC_IM_ODD;
  break;
 case 141:
  vnmc = VNMC_IM_EVEN;
  break;
 case 140:

  vnmc = VNMC_IM_FULL;

  if (!vin->info->use_mc && vin->std & V4L2_STD_525_60)
   vnmc = VNMC_IM_FULL | VNMC_FOC;
  break;
 case 138:
  vnmc = VNMC_IM_FULL;
  break;
 case 139:
  vnmc = VNMC_IM_FULL | VNMC_FOC;
  break;
 case 137:
  vnmc = VNMC_IM_ODD_EVEN;
  progressive = 1;
  break;
 default:
  vnmc = VNMC_IM_ODD;
  break;
 }




 switch (vin->mbus_code) {
 case 142:

  vnmc |= VNMC_INF_YUV16;
  input_is_yuv = 1;
  break;
 case 144:
  vnmc |= VNMC_INF_YUV16 | VNMC_YCAL;
  input_is_yuv = 1;
  break;
 case 143:

  if (!vin->is_csi &&
      vin->parallel->mbus_type == V4L2_MBUS_BT656)
   vnmc |= VNMC_INF_YUV8_BT656;
  else
   vnmc |= VNMC_INF_YUV8_BT601;

  input_is_yuv = 1;
  break;
 case 146:
  vnmc |= VNMC_INF_RGB888;
  break;
 case 145:

  if (!vin->is_csi &&
      vin->parallel->mbus_type == V4L2_MBUS_BT656)
   vnmc |= VNMC_INF_YUV10_BT656;
  else
   vnmc |= VNMC_INF_YUV10_BT601;

  input_is_yuv = 1;
  break;
 default:
  break;
 }


 if (vin->info->model == RCAR_GEN3)
  dmr2 = VNDMR2_FTEV;
 else
  dmr2 = VNDMR2_FTEV | VNDMR2_VLV(1);

 if (!vin->is_csi) {

  if (!(vin->parallel->mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW))
   dmr2 |= VNDMR2_HPS;


  if (!(vin->parallel->mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW))
   dmr2 |= VNDMR2_VPS;


  if (vin->parallel->mbus_flags & V4L2_MBUS_DATA_ENABLE_LOW)
   dmr2 |= VNDMR2_CES;
 }




 switch (vin->format.pixelformat) {
 case 133:
  rvin_write(vin,
      ALIGN(vin->format.width * vin->format.height, 0x80),
      VNUVAOF_REG);
  dmr = VNDMR_DTMD_YCSEP;
  output_is_yuv = 1;
  break;
 case 128:
  dmr = VNDMR_BPSM;
  output_is_yuv = 1;
  break;
 case 131:
  dmr = 0;
  output_is_yuv = 1;
  break;
 case 129:
  dmr = VNDMR_DTMD_ARGB;
  break;
 case 132:
  dmr = 0;
  break;
 case 130:

  dmr = VNDMR_EXRGB;
  break;
 case 134:
  dmr = (vin->alpha ? VNDMR_ABIT : 0) | VNDMR_DTMD_ARGB;
  break;
 case 135:
  dmr = VNDMR_A8BIT(vin->alpha) | VNDMR_EXRGB | VNDMR_DTMD_ARGB;
  break;
 default:
  vin_err(vin, "Invalid pixelformat (0x%x)\n",
   vin->format.pixelformat);
  return -EINVAL;
 }


 vnmc |= VNMC_VUP;


 if (input_is_yuv == output_is_yuv)
  vnmc |= VNMC_BPS;

 if (vin->info->model == RCAR_GEN3) {

  if (vin->is_csi)
   vnmc &= ~VNMC_DPINE;
  else
   vnmc |= VNMC_DPINE;
 }


 interrupts = progressive ? VNIE_FIE : VNIE_EFE;


 rvin_write(vin, interrupts, VNINTS_REG);

 rvin_write(vin, interrupts, VNIE_REG);

 rvin_write(vin, dmr, VNDMR_REG);
 rvin_write(vin, dmr2, VNDMR2_REG);


 rvin_write(vin, vnmc | VNMC_ME, VNMC_REG);

 return 0;
}
