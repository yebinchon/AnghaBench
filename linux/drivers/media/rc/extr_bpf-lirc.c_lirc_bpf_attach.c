
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {scalar_t__ driver_type; struct ir_raw_event_ctrl* raw; } ;
struct ir_raw_event_ctrl {int progs; } ;
struct bpf_prog_array {int dummy; } ;
struct bpf_prog {int dummy; } ;


 scalar_t__ BPF_MAX_PROGS ;
 int E2BIG ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ RC_DRIVER_IR_RAW ;
 int bpf_prog_array_copy (struct bpf_prog_array*,int *,struct bpf_prog*,struct bpf_prog_array**) ;
 int bpf_prog_array_free (struct bpf_prog_array*) ;
 scalar_t__ bpf_prog_array_length (struct bpf_prog_array*) ;
 int ir_raw_handler_lock ;
 struct bpf_prog_array* lirc_rcu_dereference (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct bpf_prog_array*) ;

__attribute__((used)) static int lirc_bpf_attach(struct rc_dev *rcdev, struct bpf_prog *prog)
{
 struct bpf_prog_array *old_array;
 struct bpf_prog_array *new_array;
 struct ir_raw_event_ctrl *raw;
 int ret;

 if (rcdev->driver_type != RC_DRIVER_IR_RAW)
  return -EINVAL;

 ret = mutex_lock_interruptible(&ir_raw_handler_lock);
 if (ret)
  return ret;

 raw = rcdev->raw;
 if (!raw) {
  ret = -ENODEV;
  goto unlock;
 }

 old_array = lirc_rcu_dereference(raw->progs);
 if (old_array && bpf_prog_array_length(old_array) >= BPF_MAX_PROGS) {
  ret = -E2BIG;
  goto unlock;
 }

 ret = bpf_prog_array_copy(old_array, ((void*)0), prog, &new_array);
 if (ret < 0)
  goto unlock;

 rcu_assign_pointer(raw->progs, new_array);
 bpf_prog_array_free(old_array);

unlock:
 mutex_unlock(&ir_raw_handler_lock);
 return ret;
}
