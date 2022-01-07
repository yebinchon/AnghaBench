
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_CPU_Q ;
 int hl_fw_send_heartbeat (struct hl_device*) ;

int goya_send_heartbeat(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;

 if (!(goya->hw_cap_initialized & HW_CAP_CPU_Q))
  return 0;

 return hl_fw_send_heartbeat(hdev);
}
