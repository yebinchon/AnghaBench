
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct stih_cec {int adap; scalar_t__ regs; } ;
struct cec_msg {int len; int* msg; } ;


 scalar_t__ CEC_DATA_ARRAY_STATUS ;
 scalar_t__ CEC_RX_DATA_BASE ;
 int CEC_RX_ERROR_MAX ;
 int CEC_RX_ERROR_MIN ;
 int cec_received_msg (int ,struct cec_msg*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void stih_rx_done(struct stih_cec *cec, u32 status)
{
 struct cec_msg msg = {};
 u8 i;

 if (status & CEC_RX_ERROR_MIN)
  return;

 if (status & CEC_RX_ERROR_MAX)
  return;

 msg.len = readl(cec->regs + CEC_DATA_ARRAY_STATUS) & 0x1f;

 if (!msg.len)
  return;

 if (msg.len > 16)
  msg.len = 16;

 for (i = 0; i < msg.len; i++)
  msg.msg[i] = readl(cec->regs + CEC_RX_DATA_BASE + i);

 cec_received_msg(cec->adap, &msg);
}
