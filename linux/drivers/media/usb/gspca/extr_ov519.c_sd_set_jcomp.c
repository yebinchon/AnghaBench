
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_jpegcompression {int quality; } ;
struct sd {scalar_t__ bridge; int jpegqual; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ BRIDGE_W9968CF ;
 int ENOTTY ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;

__attribute__((used)) static int sd_set_jcomp(struct gspca_dev *gspca_dev,
   const struct v4l2_jpegcompression *jcomp)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->bridge != BRIDGE_W9968CF)
  return -ENOTTY;

 v4l2_ctrl_s_ctrl(sd->jpegqual, jcomp->quality);
 return 0;
}
