
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u64 ;
typedef int u32 ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int ctl; } ;
typedef int pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int *,int,int ,long*) ;} ;


 int ARMCP_PACKET_MAX_POWER_GET ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int SET_PWR_PKT_TIMEOUT ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*,int) ;
 int memset (struct armcp_packet*,int ,int) ;
 int stub1 (struct hl_device*,int *,int,int ,long*) ;

u64 hl_get_max_power(struct hl_device *hdev)
{
 struct armcp_packet pkt;
 long result;
 int rc;

 memset(&pkt, 0, sizeof(pkt));

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_MAX_POWER_GET <<
    ARMCP_PKT_CTL_OPCODE_SHIFT);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
      SET_PWR_PKT_TIMEOUT, &result);

 if (rc) {
  dev_err(hdev->dev, "Failed to get max power, error %d\n", rc);
  result = rc;
 }

 return result;
}
