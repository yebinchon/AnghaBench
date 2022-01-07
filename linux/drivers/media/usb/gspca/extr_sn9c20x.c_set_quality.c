
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int fmt; int * jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 size_t JPEG_QT0_OFFSET ;
 size_t JPEG_QT1_OFFSET ;
 int jpeg_set_qual (int *,int ) ;
 int reg_w (struct gspca_dev*,int,int *,int) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void set_quality(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 jpeg_set_qual(sd->jpeg_hdr, val);
 reg_w1(gspca_dev, 0x1061, 0x01);
 reg_w1(gspca_dev, 0x10e0, sd->fmt | 0x20);
 reg_w(gspca_dev, 0x1100, &sd->jpeg_hdr[JPEG_QT0_OFFSET], 64);
 reg_w(gspca_dev, 0x1140, &sd->jpeg_hdr[JPEG_QT1_OFFSET], 64);
 reg_w1(gspca_dev, 0x1061, 0x03);
 reg_w1(gspca_dev, 0x10e0, sd->fmt);
 sd->fmt ^= 0x0c;
 reg_w1(gspca_dev, 0x10e0, sd->fmt);
}
