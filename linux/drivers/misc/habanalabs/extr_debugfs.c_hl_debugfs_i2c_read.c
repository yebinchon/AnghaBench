
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {void* i2c_reg; void* i2c_addr; void* i2c_bus; int ctl; } ;
typedef int pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int *,int,int ,long*) ;} ;


 int ARMCP_PACKET_I2C_RD ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int EBUSY ;
 int HL_DEVICE_TIMEOUT_USEC ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int memset (struct armcp_packet*,int ,int) ;
 int stub1 (struct hl_device*,int *,int,int ,long*) ;

__attribute__((used)) static int hl_debugfs_i2c_read(struct hl_device *hdev, u8 i2c_bus, u8 i2c_addr,
    u8 i2c_reg, u32 *val)
{
 struct armcp_packet pkt;
 int rc;

 if (hl_device_disabled_or_in_reset(hdev))
  return -EBUSY;

 memset(&pkt, 0, sizeof(pkt));

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_I2C_RD <<
    ARMCP_PKT_CTL_OPCODE_SHIFT);
 pkt.i2c_bus = i2c_bus;
 pkt.i2c_addr = i2c_addr;
 pkt.i2c_reg = i2c_reg;

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
     HL_DEVICE_TIMEOUT_USEC, (long *) val);

 if (rc)
  dev_err(hdev->dev, "Failed to read from I2C, error %d\n", rc);

 return rc;
}
