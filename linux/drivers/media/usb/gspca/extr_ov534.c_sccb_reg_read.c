
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int OV534_OP_READ_2 ;
 int OV534_OP_WRITE_2 ;
 int OV534_REG_OPERATION ;
 int OV534_REG_READ ;
 int OV534_REG_SUBADDR ;
 int ov534_reg_read (struct gspca_dev*,int ) ;
 int ov534_reg_write (struct gspca_dev*,int ,int ) ;
 int pr_err (char*) ;
 int sccb_check_status (struct gspca_dev*) ;

__attribute__((used)) static u8 sccb_reg_read(struct gspca_dev *gspca_dev, u16 reg)
{
 ov534_reg_write(gspca_dev, OV534_REG_SUBADDR, reg);
 ov534_reg_write(gspca_dev, OV534_REG_OPERATION, OV534_OP_WRITE_2);
 if (!sccb_check_status(gspca_dev))
  pr_err("sccb_reg_read failed 1\n");

 ov534_reg_write(gspca_dev, OV534_REG_OPERATION, OV534_OP_READ_2);
 if (!sccb_check_status(gspca_dev))
  pr_err("sccb_reg_read failed 2\n");

 return ov534_reg_read(gspca_dev, OV534_REG_READ);
}
