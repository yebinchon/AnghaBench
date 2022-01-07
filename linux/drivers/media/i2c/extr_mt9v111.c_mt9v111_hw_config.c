
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int code; int width; int height; } ;
struct mt9v111_dev {scalar_t__ sysclk; int ctrls; TYPE_1__ fmt; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ DIV_ROUND_CLOSEST (int ,int) ;
 unsigned int EINVAL ;




 int MT9V111_CORE_R07_OUT_CTRL ;
 int MT9V111_CORE_R07_OUT_CTRL_SAMPLE ;
 int MT9V111_CORE_R09_PIXEL_INT ;
 int MT9V111_IFP_DECIMATION_FREEZE ;
 int MT9V111_IFP_R3A_OUTFMT_CTRL2 ;
 int MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_CBCR ;
 int MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_MASK ;
 int MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_YC ;
 int MT9V111_IFP_RA5_HPAN ;
 int MT9V111_IFP_RA6_HZOOM ;
 int MT9V111_IFP_RA7_HOUT ;
 int MT9V111_IFP_RA8_VPAN ;
 int MT9V111_IFP_RA9_VZOOM ;
 int MT9V111_IFP_RAA_VOUT ;
 int MT9V111_MAX_CLKIN ;
 int MT9V111_PIXEL_ARRAY_HEIGHT ;
 int MT9V111_PIXEL_ARRAY_WIDTH ;
 int MT9V111_R01_CORE ;
 int MT9V111_R01_IFP ;
 unsigned int __mt9v111_hw_reset (struct mt9v111_dev*) ;
 unsigned int __mt9v111_sw_reset (struct mt9v111_dev*) ;
 unsigned int mt9v111_update (struct i2c_client*,int ,int ,int ,int) ;
 int mt9v111_write (struct i2c_client*,int ,int ,int) ;
 unsigned int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int mt9v111_hw_config(struct mt9v111_dev *mt9v111)
{
 struct i2c_client *c = mt9v111->client;
 unsigned int ret;
 u16 outfmtctrl2;


 ret = __mt9v111_hw_reset(mt9v111);
 if (ret == -EINVAL)
  ret = __mt9v111_sw_reset(mt9v111);
 if (ret)
  return ret;


 ret = mt9v111->sysclk < DIV_ROUND_CLOSEST(MT9V111_MAX_CLKIN, 2) ?
    mt9v111_update(c, MT9V111_R01_CORE,
     MT9V111_CORE_R07_OUT_CTRL,
     MT9V111_CORE_R07_OUT_CTRL_SAMPLE, 1) :
    mt9v111_update(c, MT9V111_R01_CORE,
     MT9V111_CORE_R07_OUT_CTRL,
     MT9V111_CORE_R07_OUT_CTRL_SAMPLE, 0);
 if (ret)
  return ret;







 switch (mt9v111->fmt.code) {
 case 129:
   outfmtctrl2 = MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_YC;
   break;
 case 130:
   outfmtctrl2 = MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_CBCR;
   break;
 case 128:
   outfmtctrl2 = MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_YC |
          MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_CBCR;
   break;
 case 131:
 default:
   outfmtctrl2 = 0;
   break;
 }

 ret = mt9v111_update(c, MT9V111_R01_IFP, MT9V111_IFP_R3A_OUTFMT_CTRL2,
        MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_MASK,
        outfmtctrl2);
 if (ret)
  return ret;
 ret = mt9v111_write(c, MT9V111_R01_IFP, MT9V111_IFP_RA5_HPAN,
       MT9V111_IFP_DECIMATION_FREEZE);
 if (ret)
  return ret;

 ret = mt9v111_write(c, MT9V111_R01_IFP, MT9V111_IFP_RA8_VPAN,
       MT9V111_IFP_DECIMATION_FREEZE);
 if (ret)
  return ret;

 ret = mt9v111_write(c, MT9V111_R01_IFP, MT9V111_IFP_RA6_HZOOM,
       MT9V111_IFP_DECIMATION_FREEZE |
       MT9V111_PIXEL_ARRAY_WIDTH);
 if (ret)
  return ret;

 ret = mt9v111_write(c, MT9V111_R01_IFP, MT9V111_IFP_RA9_VZOOM,
       MT9V111_IFP_DECIMATION_FREEZE |
       MT9V111_PIXEL_ARRAY_HEIGHT);
 if (ret)
  return ret;

 ret = mt9v111_write(c, MT9V111_R01_IFP, MT9V111_IFP_RA7_HOUT,
       MT9V111_IFP_DECIMATION_FREEZE |
       mt9v111->fmt.width);
 if (ret)
  return ret;

 ret = mt9v111_write(c, MT9V111_R01_IFP, MT9V111_IFP_RAA_VOUT,
       mt9v111->fmt.height);
 if (ret)
  return ret;


 ret = v4l2_ctrl_handler_setup(&mt9v111->ctrls);
 if (ret)
  return ret;







 return mt9v111_write(c, MT9V111_R01_CORE, MT9V111_CORE_R09_PIXEL_INT,
        MT9V111_PIXEL_ARRAY_HEIGHT);
}
