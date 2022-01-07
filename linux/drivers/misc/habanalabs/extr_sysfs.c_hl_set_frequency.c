
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct armcp_packet {int value; void* pll_index; void* ctl; } ;
typedef int pkt ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int*,int,int ,int *) ;} ;


 int ARMCP_PACKET_FREQUENCY_SET ;
 int ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int SET_CLK_PKT_TIMEOUT ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int ,char*,int,int) ;
 int memset (struct armcp_packet*,int ,int) ;
 int stub1 (struct hl_device*,int*,int,int ,int *) ;

void hl_set_frequency(struct hl_device *hdev, u32 pll_index, u64 freq)
{
 struct armcp_packet pkt;
 int rc;

 memset(&pkt, 0, sizeof(pkt));

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_FREQUENCY_SET <<
     ARMCP_PKT_CTL_OPCODE_SHIFT);
 pkt.pll_index = cpu_to_le32(pll_index);
 pkt.value = cpu_to_le64(freq);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
     SET_CLK_PKT_TIMEOUT, ((void*)0));

 if (rc)
  dev_err(hdev->dev,
   "Failed to set frequency to PLL %d, error %d\n",
   pll_index, rc);
}
