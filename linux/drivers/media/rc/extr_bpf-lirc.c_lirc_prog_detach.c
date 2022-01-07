
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int target_fd; int attach_bpf_fd; scalar_t__ attach_flags; } ;
struct rc_dev {int dev; } ;
struct bpf_prog {int dev; } ;


 int BPF_PROG_TYPE_LIRC_MODE2 ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct rc_dev*) ;
 int PTR_ERR (struct rc_dev*) ;
 struct rc_dev* bpf_prog_get_type (int ,int ) ;
 int bpf_prog_put (struct rc_dev*) ;
 int lirc_bpf_detach (struct rc_dev*,struct rc_dev*) ;
 int put_device (int *) ;
 struct rc_dev* rc_dev_get_from_fd (int ) ;

int lirc_prog_detach(const union bpf_attr *attr)
{
 struct bpf_prog *prog;
 struct rc_dev *rcdev;
 int ret;

 if (attr->attach_flags)
  return -EINVAL;

 prog = bpf_prog_get_type(attr->attach_bpf_fd,
     BPF_PROG_TYPE_LIRC_MODE2);
 if (IS_ERR(prog))
  return PTR_ERR(prog);

 rcdev = rc_dev_get_from_fd(attr->target_fd);
 if (IS_ERR(rcdev)) {
  bpf_prog_put(prog);
  return PTR_ERR(rcdev);
 }

 ret = lirc_bpf_detach(rcdev, prog);

 bpf_prog_put(prog);
 put_device(&rcdev->dev);

 return ret;
}
