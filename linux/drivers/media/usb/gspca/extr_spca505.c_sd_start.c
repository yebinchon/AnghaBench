
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ subtype; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 scalar_t__ Nxultra ;
 int SPCA50X_CUSB_ENABLE ;
 int SPCA50X_REG_COMPRESS ;
 int SPCA50X_REG_USB ;
 int SPCA50X_USB_CTRL ;
 int gspca_err (struct gspca_dev*,char*,int) ;
 int pr_err (char*,int) ;
 int reg_read (struct gspca_dev*,int,int) ;
 int reg_write (struct gspca_dev*,int,int,int) ;
 int spca505_open_data_ccd ;
 int spca505b_open_data_ccd ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret, mode;
 static u8 mode_tb[][3] = {

  {0x00, 0x10, 0x10},
  {0x01, 0x1a, 0x1a},
  {0x02, 0x1c, 0x1d},
  {0x04, 0x34, 0x34},
  {0x05, 0x40, 0x40}
 };

 if (sd->subtype == Nxultra)
  write_vector(gspca_dev, spca505b_open_data_ccd);
 else
  write_vector(gspca_dev, spca505_open_data_ccd);
 ret = reg_read(gspca_dev, 0x06, 0x16);

 if (ret < 0) {
  gspca_err(gspca_dev, "register read failed err: %d\n", ret);
  return ret;
 }
 if (ret != 0x0101) {
  pr_err("After vector read returns 0x%04x should be 0x0101\n",
         ret);
 }

 ret = reg_write(gspca_dev, 0x06, 0x16, 0x0a);
 if (ret < 0)
  return ret;
 reg_write(gspca_dev, 0x05, 0xc2, 0x12);




 reg_write(gspca_dev, 0x02, 0x00, 0x00);

 mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
 reg_write(gspca_dev, SPCA50X_REG_COMPRESS, 0x00, mode_tb[mode][0]);
 reg_write(gspca_dev, SPCA50X_REG_COMPRESS, 0x06, mode_tb[mode][1]);
 reg_write(gspca_dev, SPCA50X_REG_COMPRESS, 0x07, mode_tb[mode][2]);

 return reg_write(gspca_dev, SPCA50X_REG_USB,
    SPCA50X_USB_CTRL,
    SPCA50X_CUSB_ENABLE);
}
