
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ov534_reg_write (struct gspca_dev*,int,int) ;
 int ov534_set_led (struct gspca_dev*,int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 ov534_reg_write(gspca_dev, 0xe0, 0x09);
 ov534_set_led(gspca_dev, 0);
}
