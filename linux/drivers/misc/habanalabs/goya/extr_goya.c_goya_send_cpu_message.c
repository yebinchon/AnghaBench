
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int GOYA_QUEUE_ID_CPU_PQ ;
 int HW_CAP_CPU_Q ;
 int hl_fw_send_cpu_message (struct hl_device*,int ,int *,int ,int ,long*) ;

int goya_send_cpu_message(struct hl_device *hdev, u32 *msg, u16 len,
    u32 timeout, long *result)
{
 struct goya_device *goya = hdev->asic_specific;

 if (!(goya->hw_cap_initialized & HW_CAP_CPU_Q)) {
  if (result)
   *result = 0;
  return 0;
 }

 return hl_fw_send_cpu_message(hdev, GOYA_QUEUE_ID_CPU_PQ, msg, len,
     timeout, result);
}
