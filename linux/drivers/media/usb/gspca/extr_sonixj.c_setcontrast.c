
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_1__* contrast; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 int CONTRAST_MAX ;
 int reg_w (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 k2;
 u8 contrast[6];

 k2 = sd->contrast->val * 37 / (CONTRAST_MAX + 1)
    + 37;
 contrast[0] = (k2 + 1) / 2;
 contrast[1] = 0;
 contrast[2] = k2;
 contrast[3] = 0;
 contrast[4] = k2 / 5;
 contrast[5] = 0;
 reg_w(gspca_dev, 0x84, contrast, sizeof contrast);
}
