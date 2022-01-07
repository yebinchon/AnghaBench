
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int reg08; int jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;


 int ZC3XX_R008_CLOCKSETTING ;
 int * jpeg_qual ;
 int jpeg_set_qual (int ,int ) ;
 int reg_w (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setquality(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 jpeg_set_qual(sd->jpeg_hdr, jpeg_qual[sd->reg08 >> 1]);
 reg_w(gspca_dev, sd->reg08, ZC3XX_R008_CLOCKSETTING);
}
