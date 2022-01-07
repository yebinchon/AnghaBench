
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int reg_r (struct gspca_dev*,int,int ,int) ;
 int reg_w_1 (struct gspca_dev*,int,int ,int ,int) ;
 int spca504B_PollingDataReady (struct gspca_dev*) ;

__attribute__((used)) static void spca504B_setQtable(struct gspca_dev *gspca_dev)
{
 reg_w_1(gspca_dev, 0x26, 0, 0, 3);
 reg_r(gspca_dev, 0x26, 0, 1);
 spca504B_PollingDataReady(gspca_dev);
}
