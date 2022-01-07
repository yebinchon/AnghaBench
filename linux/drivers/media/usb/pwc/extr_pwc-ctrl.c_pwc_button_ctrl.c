
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pwc_device {int dummy; } ;


 int SET_STATUS_CTL ;
 int send_control_msg (struct pwc_device*,int ,int ,int *,int ) ;

int pwc_button_ctrl(struct pwc_device *pdev, u16 value)
{
 int ret;

 ret = send_control_msg(pdev, SET_STATUS_CTL, value, ((void*)0), 0);
 if (ret < 0)
  return ret;

 return 0;
}
