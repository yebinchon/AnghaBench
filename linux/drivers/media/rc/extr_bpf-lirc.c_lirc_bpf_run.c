
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct ir_raw_event_ctrl* raw; } ;
struct ir_raw_event_ctrl {int bpf_sample; scalar_t__ progs; } ;


 int BPF_PROG_RUN ;
 int BPF_PROG_RUN_ARRAY (scalar_t__,int *,int ) ;

void lirc_bpf_run(struct rc_dev *rcdev, u32 sample)
{
 struct ir_raw_event_ctrl *raw = rcdev->raw;

 raw->bpf_sample = sample;

 if (raw->progs)
  BPF_PROG_RUN_ARRAY(raw->progs, &raw->bpf_sample, BPF_PROG_RUN);
}
