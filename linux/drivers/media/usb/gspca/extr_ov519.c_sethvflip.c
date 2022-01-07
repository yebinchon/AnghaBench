
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ streaming; } ;
struct sd {TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int OV519_R51_RESET1 ;
 int OV7670_MVFP_MIRROR ;
 int OV7670_MVFP_VFLIP ;
 int OV7670_R1E_MVFP ;
 int i2c_w_mask (struct sd*,int ,int,int) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static void sethvflip(struct gspca_dev *gspca_dev, s32 hflip, s32 vflip)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->gspca_dev.streaming)
  reg_w(sd, OV519_R51_RESET1, 0x0f);
 i2c_w_mask(sd, OV7670_R1E_MVFP,
  OV7670_MVFP_MIRROR * hflip | OV7670_MVFP_VFLIP * vflip,
  OV7670_MVFP_MIRROR | OV7670_MVFP_VFLIP);
 if (sd->gspca_dev.streaming)
  reg_w(sd, OV519_R51_RESET1, 0x00);
}
