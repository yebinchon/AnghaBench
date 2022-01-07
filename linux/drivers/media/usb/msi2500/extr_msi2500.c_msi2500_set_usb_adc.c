
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct v4l2_ctrl {int dummy; } ;
struct msi2500_dev {unsigned int f_adc; int pixelformat; int dev; int hdl; } ;


 int CMD_WREG ;
 unsigned int DIV_LO_OUT ;
 int DIV_PRE_N ;
 int F_REF ;


 int V4L2_CID_RF_TUNER_BANDWIDTH ;
 int V4L2_CID_RF_TUNER_BANDWIDTH_AUTO ;




 int dev_dbg (int ,char*,unsigned int,unsigned int,...) ;
 unsigned int div_u64 (int,int) ;
 unsigned int div_u64_rem (unsigned int,int,unsigned int*) ;
 int msi2500_ctrl_msg (struct msi2500_dev*,int ,int) ;
 struct v4l2_ctrl* v4l2_ctrl_find (int *,int ) ;
 scalar_t__ v4l2_ctrl_g_ctrl (struct v4l2_ctrl*) ;
 int v4l2_ctrl_s_ctrl (struct v4l2_ctrl*,unsigned int) ;

__attribute__((used)) static int msi2500_set_usb_adc(struct msi2500_dev *dev)
{
 int ret;
 unsigned int f_vco, f_sr, div_n, k, k_cw, div_out;
 u32 reg3, reg4, reg7;
 struct v4l2_ctrl *bandwidth_auto;
 struct v4l2_ctrl *bandwidth;

 f_sr = dev->f_adc;


 bandwidth_auto = v4l2_ctrl_find(&dev->hdl,
   V4L2_CID_RF_TUNER_BANDWIDTH_AUTO);
 if (v4l2_ctrl_g_ctrl(bandwidth_auto)) {
  bandwidth = v4l2_ctrl_find(&dev->hdl,
    V4L2_CID_RF_TUNER_BANDWIDTH);
  v4l2_ctrl_s_ctrl(bandwidth, dev->f_adc);
 }


 switch (dev->pixelformat) {
 case 128:
  reg7 = 0x000c9407;
  break;
 case 129:
  reg7 = 0x00009407;
  break;
 case 130:
  reg7 = 0x000c9407;
  break;
 case 133:
  reg7 = 0x0000a507;
  break;
 case 132:
  reg7 = 0x00008507;
  break;
 case 131:
  reg7 = 0x00009407;
  break;
 default:
  reg7 = 0x000c9407;
  break;
 }
 reg3 = 0x01000303;
 reg4 = 0x00000004;


 if (f_sr < 6000000)
  reg3 |= 0x1 << 20;
 else if (f_sr < 7000000)
  reg3 |= 0x5 << 20;
 else if (f_sr < 8500000)
  reg3 |= 0x9 << 20;
 else
  reg3 |= 0xd << 20;

 for (div_out = 4; div_out < 16; div_out += 2) {
  f_vco = f_sr * div_out * 12;
  dev_dbg(dev->dev, "div_out=%u f_vco=%u\n", div_out, f_vco);
  if (f_vco >= 202000000)
   break;
 }


 div_n = div_u64_rem(f_vco, 2 * 24000000, &k);
 k_cw = div_u64((u64) k * 0x200000, 2 * 24000000);

 reg3 |= div_n << 16;
 reg3 |= (div_out / 2 - 1) << 10;
 reg3 |= ((k_cw >> 20) & 0x000001) << 15;
 reg4 |= ((k_cw >> 0) & 0x0fffff) << 8;

 dev_dbg(dev->dev,
  "f_sr=%u f_vco=%u div_n=%u k=%u div_out=%u reg3=%08x reg4=%08x\n",
  f_sr, f_vco, div_n, k, div_out, reg3, reg4);

 ret = msi2500_ctrl_msg(dev, CMD_WREG, 0x00608008);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, 0x00000c05);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, 0x00020000);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, 0x00480102);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, 0x00f38008);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, reg7);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, reg4);
 if (ret)
  goto err;

 ret = msi2500_ctrl_msg(dev, CMD_WREG, reg3);
err:
 return ret;
}
