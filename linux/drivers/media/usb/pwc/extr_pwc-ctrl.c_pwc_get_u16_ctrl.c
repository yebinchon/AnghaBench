
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int* ctrl_buf; } ;


 int recv_control_msg (struct pwc_device*,int ,int ,int) ;

int pwc_get_u16_ctrl(struct pwc_device *pdev, u8 request, u16 value, int *data)
{
 int ret;

 ret = recv_control_msg(pdev, request, value, 2);
 if (ret < 0)
  return ret;

 *data = (pdev->ctrl_buf[1] << 8) | pdev->ctrl_buf[0];
 return 0;
}
