
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; int release; int* ctrl_buf; int power_save; } ;


 int PWC_ERROR (char*,char*,int) ;
 int SET_POWER_SAVE_MODE_FORMATTER ;
 int SET_STATUS_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,int*,int) ;

void pwc_camera_power(struct pwc_device *pdev, int power)
{
 int r;

 if (!pdev->power_save)
  return;

 if (pdev->type < 675 || (pdev->type < 730 && pdev->release < 6))
  return;

 if (power)
  pdev->ctrl_buf[0] = 0x00;
 else
  pdev->ctrl_buf[0] = 0xFF;
 r = send_control_msg(pdev, SET_STATUS_CTL,
  SET_POWER_SAVE_MODE_FORMATTER, pdev->ctrl_buf, 1);
 if (r < 0)
  PWC_ERROR("Failed to power %s camera (%d)\n",
     power ? "on" : "off", r);
}
