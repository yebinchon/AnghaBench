
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int * ctrl_buf; } ;


 int send_control_msg (struct pwc_device*,int ,int ,int *,int) ;

int pwc_set_u8_ctrl(struct pwc_device *pdev, u8 request, u16 value, u8 data)
{
 int ret;

 pdev->ctrl_buf[0] = data;
 ret = send_control_msg(pdev, request, value, pdev->ctrl_buf, 1);
 if (ret < 0)
  return ret;

 return 0;
}
