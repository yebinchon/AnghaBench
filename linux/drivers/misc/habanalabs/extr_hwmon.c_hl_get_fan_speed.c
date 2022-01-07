
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {void* type; void* sensor_index; int ctl; } ;
typedef int pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int*,int,int ,long*) ;} ;


 int ARMCP_PACKET_FAN_SPEED_GET ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int SENSORS_PKT_TIMEOUT ;
 void* __cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*,int,int) ;
 int memset (struct armcp_packet*,int ,int) ;
 int stub1 (struct hl_device*,int*,int,int ,long*) ;

long hl_get_fan_speed(struct hl_device *hdev, int sensor_index, u32 attr)
{
 struct armcp_packet pkt;
 long result;
 int rc;

 memset(&pkt, 0, sizeof(pkt));

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_FAN_SPEED_GET <<
    ARMCP_PKT_CTL_OPCODE_SHIFT);
 pkt.sensor_index = __cpu_to_le16(sensor_index);
 pkt.type = __cpu_to_le16(attr);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
     SENSORS_PKT_TIMEOUT, &result);

 if (rc) {
  dev_err(hdev->dev,
   "Failed to get fan speed from sensor %d, error %d\n",
   sensor_index, rc);
  result = 0;
 }

 return result;
}
