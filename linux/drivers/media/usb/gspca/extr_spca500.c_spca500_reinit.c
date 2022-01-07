
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;
typedef int __u8 ;


 int gspca_err (struct gspca_dev*,char*) ;
 int msleep (int) ;
 int qtable_pocketdv ;
 int reg_r (struct gspca_dev*,int,int) ;
 scalar_t__ reg_r_wait (struct gspca_dev*,int ,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 int spca50x_setup_qtable (struct gspca_dev*,int,int,int,int ) ;

__attribute__((used)) static void spca500_reinit(struct gspca_dev *gspca_dev)
{
 int err;
 __u8 Data;



 reg_w(gspca_dev, 0x00, 0x0d01, 0x01);
 reg_w(gspca_dev, 0x00, 0x0d03, 0x00);
 reg_w(gspca_dev, 0x00, 0x0d02, 0x01);


 reg_w(gspca_dev, 0x00, 0x850a, 0x0001);

 err = spca50x_setup_qtable(gspca_dev, 0x00, 0x8800, 0x8840,
     qtable_pocketdv);
 if (err < 0)
  gspca_err(gspca_dev, "spca50x_setup_qtable failed on init\n");


 reg_w(gspca_dev, 0x00, 0x8880, 2);

 reg_w(gspca_dev, 0x00, 0x800a, 0x00);

 reg_w(gspca_dev, 0x00, 0x820f, 0x01);

 reg_w(gspca_dev, 0x00, 0x870a, 0x04);

 reg_w(gspca_dev, 0, 0x8003, 0x00);

 reg_w(gspca_dev, 0x00, 0x8000, 0x0004);
 msleep(2000);
 if (reg_r_wait(gspca_dev, 0, 0x8000, 0x44) != 0) {
  reg_r(gspca_dev, 0x816b, 1);
  Data = gspca_dev->usb_buf[0];
  reg_w(gspca_dev, 0x00, 0x816b, Data);
 }
}
