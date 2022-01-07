
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {scalar_t__ ctrl_buf; } ;
typedef int s8 ;


 int recv_control_msg (struct pwc_device*,int ,int ,int) ;

int pwc_get_s8_ctrl(struct pwc_device *pdev, u8 request, u16 value, int *data)
{
 int ret;

 ret = recv_control_msg(pdev, request, value, 1);
 if (ret < 0)
  return ret;

 *data = ((s8 *)pdev->ctrl_buf)[0];
 return 0;
}
