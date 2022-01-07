
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int target_fd; scalar_t__ attach_flags; } ;
struct rc_dev {int dev; } ;
struct bpf_prog {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct rc_dev*) ;
 int PTR_ERR (struct rc_dev*) ;
 int lirc_bpf_attach (struct rc_dev*,struct bpf_prog*) ;
 int put_device (int *) ;
 struct rc_dev* rc_dev_get_from_fd (int ) ;

int lirc_prog_attach(const union bpf_attr *attr, struct bpf_prog *prog)
{
 struct rc_dev *rcdev;
 int ret;

 if (attr->attach_flags)
  return -EINVAL;

 rcdev = rc_dev_get_from_fd(attr->target_fd);
 if (IS_ERR(rcdev))
  return PTR_ERR(rcdev);

 ret = lirc_bpf_attach(rcdev, prog);

 put_device(&rcdev->dev);

 return ret;
}
