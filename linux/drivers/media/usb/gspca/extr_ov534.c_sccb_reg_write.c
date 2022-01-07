
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int usb_err; } ;


 int D_USBO ;
 int EIO ;
 int OV534_OP_WRITE_3 ;
 int OV534_REG_OPERATION ;
 int OV534_REG_SUBADDR ;
 int OV534_REG_WRITE ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int ov534_reg_write (struct gspca_dev*,int ,int ) ;
 int pr_err (char*) ;
 int sccb_check_status (struct gspca_dev*) ;

__attribute__((used)) static void sccb_reg_write(struct gspca_dev *gspca_dev, u8 reg, u8 val)
{
 gspca_dbg(gspca_dev, D_USBO, "sccb write: %02x %02x\n", reg, val);
 ov534_reg_write(gspca_dev, OV534_REG_SUBADDR, reg);
 ov534_reg_write(gspca_dev, OV534_REG_WRITE, val);
 ov534_reg_write(gspca_dev, OV534_REG_OPERATION, OV534_OP_WRITE_3);

 if (!sccb_check_status(gspca_dev)) {
  pr_err("sccb_reg_write failed\n");
  gspca_dev->usb_err = -EIO;
 }
}
