
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_hfi_device {int pwr_collapse_prep; } ;
struct hfi_sys_pc_prep_pkt {int dummy; } ;


 int ETIMEDOUT ;
 int init_completion (int *) ;
 unsigned long msecs_to_jiffies (int ) ;
 int pkt_sys_pc_prep (struct hfi_sys_pc_prep_pkt*) ;
 int venus_flush_debug_queue (struct venus_hfi_device*) ;
 int venus_hw_rsp_timeout ;
 int venus_iface_cmdq_write (struct venus_hfi_device*,struct hfi_sys_pc_prep_pkt*) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int venus_prepare_power_collapse(struct venus_hfi_device *hdev,
     bool wait)
{
 unsigned long timeout = msecs_to_jiffies(venus_hw_rsp_timeout);
 struct hfi_sys_pc_prep_pkt pkt;
 int ret;

 init_completion(&hdev->pwr_collapse_prep);

 pkt_sys_pc_prep(&pkt);

 ret = venus_iface_cmdq_write(hdev, &pkt);
 if (ret)
  return ret;

 if (!wait)
  return 0;

 ret = wait_for_completion_timeout(&hdev->pwr_collapse_prep, timeout);
 if (!ret) {
  venus_flush_debug_queue(hdev);
  return -ETIMEDOUT;
 }

 return 0;
}
