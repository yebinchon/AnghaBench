
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_jpegcompression {int quality; } ;
struct sd {int jpegqual; } ;
struct gspca_dev {int dummy; } ;


 int v4l2_ctrl_s_ctrl (int ,int ) ;

__attribute__((used)) static int sd_set_jcomp(struct gspca_dev *gspca_dev,
   const struct v4l2_jpegcompression *jcomp)
{
 struct sd *sd = (struct sd *) gspca_dev;

 v4l2_ctrl_s_ctrl(sd->jpegqual, jcomp->quality);
 return 0;
}
