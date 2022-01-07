
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int vicam_control_msg (struct gspca_dev*,int,int,int ,int *,int ) ;

__attribute__((used)) static int vicam_set_camera_power(struct gspca_dev *gspca_dev, int state)
{
 int ret;

 ret = vicam_control_msg(gspca_dev, 0x50, state, 0, ((void*)0), 0);
 if (ret < 0)
  return ret;

 if (state)
  ret = vicam_control_msg(gspca_dev, 0x55, 1, 0, ((void*)0), 0);

 return ret;
}
