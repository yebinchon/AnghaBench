
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct firmware {int size; scalar_t__* data; } ;
struct TYPE_3__ {struct v4l2_subdev sd; } ;
struct cx18 {TYPE_2__* pci_dev; TYPE_1__ av_state; } ;
struct TYPE_4__ {int dev; } ;


 int CX18_AI1_MUX_843_I2S ;
 int CX18_AI1_MUX_I2S1 ;
 int CX18_AI1_MUX_INVALID ;
 int CX18_AI1_MUX_MASK ;
 int CX18_AUDIO_ENABLE ;
 int CX18_ERR_DEV (struct v4l2_subdev*,char*,int ) ;
 int CX18_INFO_DEV (struct v4l2_subdev*,char*,int ,int) ;
 int CX18_MAX_MMIO_WR_RETRIES ;
 int CXADEC_CHIP_CTRL ;
 int CXADEC_DL_CTL ;
 int CXADEC_I2S_IN_CTL ;
 int CXADEC_I2S_OUT_CTL ;
 int CXADEC_PIN_CFG3 ;
 int CXADEC_PIN_CTRL1 ;
 int CXADEC_STD_DET_CTL ;
 int EINVAL ;
 int EIO ;
 int FWFILE ;
 int cx18_av_and_or4 (struct cx18*,int ,int ,int) ;
 int cx18_av_read4 (struct cx18*,int) ;
 scalar_t__ cx18_av_verifyfw (struct cx18*,struct firmware const*) ;
 int cx18_av_write4 (struct cx18*,int,int) ;
 int cx18_av_write4_expect (struct cx18*,int,int,int,int) ;
 int cx18_av_write4_noretry (struct cx18*,int,int) ;
 int cx18_av_write_expect (struct cx18*,int,int,int,int) ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg_expect (struct cx18*,int,int ,int,int) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,int ,int *) ;
 int udelay (int) ;

int cx18_av_loadfw(struct cx18 *cx)
{
 struct v4l2_subdev *sd = &cx->av_state.sd;
 const struct firmware *fw = ((void*)0);
 u32 size;
 u32 u, v;
 const u8 *ptr;
 int i;
 int retries1 = 0;

 if (request_firmware(&fw, FWFILE, &cx->pci_dev->dev) != 0) {
  CX18_ERR_DEV(sd, "unable to open firmware %s\n", FWFILE);
  return -EINVAL;
 }



 while (retries1 < 5) {
  cx18_av_write4_expect(cx, CXADEC_CHIP_CTRL, 0x00010000,
       0x00008430, 0xffffffff);
  cx18_av_write_expect(cx, CXADEC_STD_DET_CTL, 0xf6, 0xf6, 0xff);


  cx18_av_write4_expect(cx, 0x8100, 0x00010000,
       0x00008430, 0xffffffff);


  cx18_av_write4_noretry(cx, CXADEC_DL_CTL, 0x0F000000);

  ptr = fw->data;
  size = fw->size;

  for (i = 0; i < size; i++) {
   u32 dl_control = 0x0F000000 | i | ((u32)ptr[i] << 16);
   u32 value = 0;
   int retries2;
   int unrec_err = 0;

   for (retries2 = 0; retries2 < CX18_MAX_MMIO_WR_RETRIES;
        retries2++) {
    cx18_av_write4_noretry(cx, CXADEC_DL_CTL,
             dl_control);
    udelay(10);
    value = cx18_av_read4(cx, CXADEC_DL_CTL);
    if (value == dl_control)
     break;



    if ((value & 0x3F00) != (dl_control & 0x3F00)) {
     unrec_err = 1;
     break;
    }
   }
   if (unrec_err || retries2 >= CX18_MAX_MMIO_WR_RETRIES)
    break;
  }
  if (i == size)
   break;
  retries1++;
 }
 if (retries1 >= 5) {
  CX18_ERR_DEV(sd, "unable to load firmware %s\n", FWFILE);
  release_firmware(fw);
  return -EIO;
 }

 cx18_av_write4_expect(cx, CXADEC_DL_CTL,
    0x03000000 | fw->size, 0x03000000, 0x13000000);

 CX18_INFO_DEV(sd, "loaded %s firmware (%d bytes)\n", FWFILE, size);

 if (cx18_av_verifyfw(cx, fw) == 0)
  cx18_av_write4_expect(cx, CXADEC_DL_CTL,
    0x13000000 | fw->size, 0x13000000, 0x13000000);


 cx18_av_and_or4(cx, CXADEC_PIN_CTRL1, ~0, 0x78000);






 cx18_av_write4(cx, CXADEC_I2S_IN_CTL, 0x000000A0);
 cx18_av_write4(cx, CXADEC_I2S_OUT_CTL, 0x000001A0);



 cx18_av_write4(cx, CXADEC_PIN_CFG3, 0x5600B687);

 cx18_av_write4_expect(cx, CXADEC_STD_DET_CTL, 0x000000F6, 0x000000F6,
          0x3F00FFFF);





 cx18_av_write4(cx, 0x09CC, 1);

 v = cx18_read_reg(cx, CX18_AUDIO_ENABLE);

 if (v & 0x800)
  cx18_write_reg_expect(cx, v & 0xFFFFFBFF, CX18_AUDIO_ENABLE,
          0, 0x400);


 v = cx18_read_reg(cx, CX18_AUDIO_ENABLE);
 u = v & CX18_AI1_MUX_MASK;
 v &= ~CX18_AI1_MUX_MASK;
 if (u == CX18_AI1_MUX_843_I2S || u == CX18_AI1_MUX_INVALID) {

  v |= CX18_AI1_MUX_I2S1;
  cx18_write_reg_expect(cx, v | 0xb00, CX18_AUDIO_ENABLE,
          v, CX18_AI1_MUX_MASK);

  v = (v & ~CX18_AI1_MUX_MASK) | CX18_AI1_MUX_843_I2S;
 } else {

  v |= CX18_AI1_MUX_843_I2S;
  cx18_write_reg_expect(cx, v | 0xb00, CX18_AUDIO_ENABLE,
          v, CX18_AI1_MUX_MASK);

  v = (v & ~CX18_AI1_MUX_MASK) | u;
 }
 cx18_write_reg_expect(cx, v | 0xb00, CX18_AUDIO_ENABLE,
         v, CX18_AI1_MUX_MASK);


 v = cx18_av_read4(cx, CXADEC_STD_DET_CTL);
 v |= 0xFF;
 v |= 0x400;
 v |= 0x14000000;
 cx18_av_write4_expect(cx, CXADEC_STD_DET_CTL, v, v, 0x3F00FFFF);

 release_firmware(fw);
 return 0;
}
