
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int flip_debounce; int flip_status; int vflip; int hflip; } ;
struct gspca_dev {int dummy; } ;


 int sethflip (struct gspca_dev*,int ) ;
 int setvflip (struct gspca_dev*,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void stk1135_dq_callback(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->flip_debounce > 100) {
  sd->flip_status = !sd->flip_status;
  sethflip(gspca_dev, v4l2_ctrl_g_ctrl(sd->hflip));
  setvflip(gspca_dev, v4l2_ctrl_g_ctrl(sd->vflip));
 }
}
