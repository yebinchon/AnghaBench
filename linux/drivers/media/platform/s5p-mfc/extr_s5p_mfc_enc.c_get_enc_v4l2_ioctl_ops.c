
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ioctl_ops {int dummy; } ;


 struct v4l2_ioctl_ops const s5p_mfc_enc_ioctl_ops ;

const struct v4l2_ioctl_ops *get_enc_v4l2_ioctl_ops(void)
{
 return &s5p_mfc_enc_ioctl_ops;
}
