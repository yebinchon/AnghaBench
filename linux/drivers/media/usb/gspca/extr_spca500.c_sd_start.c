
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int subtype; int jpeg_hdr; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {int* usb_buf; int curr_mode; TYPE_1__ pixfmt; } ;
typedef int __u8 ;





 int Clicksmart510_defaults ;


 int D_STREAM ;
 int QUALITY ;

 int gspca_dbg (struct gspca_dev*,int ,char*,int,...) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int jpeg_define (int ,int ,int ,int) ;
 int jpeg_set_qual (int ,int ) ;
 int msleep (int) ;
 int qtable_creative_pccam ;
 int qtable_kodak_ez200 ;
 int qtable_pocketdv ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_r_wait (struct gspca_dev*,int ,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 int spca500_full_reset (struct gspca_dev*) ;
 int spca500_reinit (struct gspca_dev*) ;
 int spca500_setmode (struct gspca_dev*,int,int) ;
 int spca500_synch310 (struct gspca_dev*) ;
 int spca500_visual_defaults ;
 int spca50x_setup_qtable (struct gspca_dev*,int,int,int,int ) ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int err;
 __u8 Data;
 __u8 xmult, ymult;


 jpeg_define(sd->jpeg_hdr, gspca_dev->pixfmt.height,
   gspca_dev->pixfmt.width,
   0x22);
 jpeg_set_qual(sd->jpeg_hdr, QUALITY);

 if (sd->subtype == 134) {
  xmult = 0x16;
  ymult = 0x12;
 } else {
  xmult = 0x28;
  ymult = 0x1e;
 }


 reg_r(gspca_dev, 0x8a04, 1);
 gspca_dbg(gspca_dev, D_STREAM, "Spca500 Sensor Address 0x%02x\n",
    gspca_dev->usb_buf[0]);
 gspca_dbg(gspca_dev, D_STREAM, "Spca500 curr_mode: %d Xmult: 0x%02x, Ymult: 0x%02x",
    gspca_dev->curr_mode, xmult, ymult);


 switch (sd->subtype) {
 case 134:
   spca500_setmode(gspca_dev, xmult, ymult);


  reg_w(gspca_dev, 0x00, 0x850a, 0x0001);
  reg_w(gspca_dev, 0x00, 0x8880, 3);
  err = spca50x_setup_qtable(gspca_dev,
        0x00, 0x8800, 0x8840,
        qtable_creative_pccam);
  if (err < 0)
   gspca_err(gspca_dev, "spca50x_setup_qtable failed\n");

  reg_w(gspca_dev, 0x00, 0x870a, 0x04);


  reg_w(gspca_dev, 0x00, 0x8000, 0x0004);
  msleep(500);
  if (reg_r_wait(gspca_dev, 0, 0x8000, 0x44) != 0)
   gspca_err(gspca_dev, "reg_r_wait() failed\n");

  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);

  spca500_synch310(gspca_dev);

  write_vector(gspca_dev, spca500_visual_defaults);
  spca500_setmode(gspca_dev, xmult, ymult);

  err = reg_w(gspca_dev, 0x00, 0x850a, 0x0001);
  if (err < 0)
   gspca_err(gspca_dev, "failed to enable drop packet\n");
  reg_w(gspca_dev, 0x00, 0x8880, 3);
  err = spca50x_setup_qtable(gspca_dev,
        0x00, 0x8800, 0x8840,
        qtable_creative_pccam);
  if (err < 0)
   gspca_err(gspca_dev, "spca50x_setup_qtable failed\n");


  reg_w(gspca_dev, 0x00, 0x870a, 0x04);


  reg_w(gspca_dev, 0x00, 0x8000, 0x0004);

  if (reg_r_wait(gspca_dev, 0, 0x8000, 0x44) != 0)
   gspca_err(gspca_dev, "reg_r_wait() failed\n");

  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);
  break;
 case 139:
 case 136:




  err = spca500_full_reset(gspca_dev);
  if (err < 0)
   gspca_err(gspca_dev, "spca500_full_reset failed\n");


  err = reg_w(gspca_dev, 0x00, 0x850a, 0x0001);
  if (err < 0)
   gspca_err(gspca_dev, "failed to enable drop packet\n");
  reg_w(gspca_dev, 0x00, 0x8880, 3);
  err = spca50x_setup_qtable(gspca_dev,
        0x00, 0x8800, 0x8840,
        qtable_creative_pccam);
  if (err < 0)
   gspca_err(gspca_dev, "spca50x_setup_qtable failed\n");

  spca500_setmode(gspca_dev, xmult, ymult);
  reg_w(gspca_dev, 0x20, 0x0001, 0x0004);


  reg_w(gspca_dev, 0x00, 0x8000, 0x0004);

  if (reg_r_wait(gspca_dev, 0, 0x8000, 0x44) != 0)
   gspca_err(gspca_dev, "reg_r_wait() failed\n");

  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);


  break;
 case 135:


  err = spca500_full_reset(gspca_dev);
  if (err < 0)
   gspca_err(gspca_dev, "spca500_full_reset failed\n");

  reg_w(gspca_dev, 0x00, 0x850a, 0x0001);
  reg_w(gspca_dev, 0x00, 0x8880, 0);
  err = spca50x_setup_qtable(gspca_dev,
        0x00, 0x8800, 0x8840,
        qtable_kodak_ez200);
  if (err < 0)
   gspca_err(gspca_dev, "spca50x_setup_qtable failed\n");
  spca500_setmode(gspca_dev, xmult, ymult);

  reg_w(gspca_dev, 0x20, 0x0001, 0x0004);


  reg_w(gspca_dev, 0x00, 0x8000, 0x0004);

  if (reg_r_wait(gspca_dev, 0, 0x8000, 0x44) != 0)
   gspca_err(gspca_dev, "reg_r_wait() failed\n");

  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);


  break;

 case 140:
 case 138:
 case 141:
 case 137:
 case 131:
 case 129:
 case 130:
 case 128:
 case 142:
  spca500_reinit(gspca_dev);
  reg_w(gspca_dev, 0x00, 0x0d01, 0x01);

  reg_w(gspca_dev, 0x00, 0x850a, 0x0001);

  err = spca50x_setup_qtable(gspca_dev,
       0x00, 0x8800, 0x8840, qtable_pocketdv);
  if (err < 0)
   gspca_err(gspca_dev, "spca50x_setup_qtable failed\n");
  reg_w(gspca_dev, 0x00, 0x8880, 2);


  reg_w(gspca_dev, 0x00, 0x800a, 0x00);

  reg_w(gspca_dev, 0x00, 0x820f, 0x01);

  reg_w(gspca_dev, 0x00, 0x870a, 0x04);

  spca500_setmode(gspca_dev, xmult, ymult);

  reg_w(gspca_dev, 0x00, 0x8000, 0x0004);

  reg_r_wait(gspca_dev, 0, 0x8000, 0x44);

  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);
  break;
 case 132:
 case 133:
  reg_w(gspca_dev, 0x02, 0x00, 0x00);

  reg_w(gspca_dev, 0x00, 0x850a, 0x0001);

  err = spca50x_setup_qtable(gspca_dev,
     0x00, 0x8800,
     0x8840, qtable_creative_pccam);
  if (err < 0)
   gspca_err(gspca_dev, "spca50x_setup_qtable failed\n");
  reg_w(gspca_dev, 0x00, 0x8880, 3);
  reg_w(gspca_dev, 0x00, 0x800a, 0x00);

  reg_w(gspca_dev, 0x00, 0x870a, 0x04);

  spca500_setmode(gspca_dev, xmult, ymult);


  reg_w(gspca_dev, 0x00, 0x8000, 0x0004);
  reg_r_wait(gspca_dev, 0, 0x8000, 0x44);

  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);
  write_vector(gspca_dev, Clicksmart510_defaults);
  break;
 }
 return 0;
}
