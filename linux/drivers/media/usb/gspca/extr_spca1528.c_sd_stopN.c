
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int,int) ;
 int wait_status_0 (struct gspca_dev*) ;
 int wait_status_1 (struct gspca_dev*) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{

 wait_status_0(gspca_dev);
 reg_w(gspca_dev, 0x31, 0x0000, 0x0000);
 wait_status_1(gspca_dev);
 wait_status_0(gspca_dev);
}
