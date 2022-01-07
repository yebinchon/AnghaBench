
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {scalar_t__ clock_type; int clock_reg; int npe; scalar_t__ id; scalar_t__ loopback; } ;
struct msg {scalar_t__ cmd; int data32; scalar_t__ hss_port; void* data16b; void* data16a; int index; } ;
typedef int msg ;


 int BUG () ;
 int CCR_LOOPBACK ;
 int CCR_SECOND_HSS ;
 scalar_t__ CLOCK_INT ;
 void* FRAME_OFFSET ;
 void* FRAME_SIZE ;
 int HSS_CONFIG_CLOCK_CR ;
 int HSS_CONFIG_CORE_CR ;
 int HSS_CONFIG_RX_FCR ;
 int HSS_CONFIG_RX_PCR ;
 int HSS_CONFIG_TX_FCR ;
 int HSS_CONFIG_TX_PCR ;
 int PCR_DCLK_EDGE_RISING ;
 int PCR_FRM_PULSE_DISABLED ;
 int PCR_MSB_ENDIAN ;
 int PCR_SOF_NO_FBIT ;
 int PCR_SYNC_CLK_DIR_OUTPUT ;
 int PCR_TX_DATA_ENABLE ;
 scalar_t__ PORT_CONFIG_LOAD ;
 void* PORT_CONFIG_WRITE ;
 int hss_config_set_lut (struct port*) ;
 int hss_npe_send (struct port*,struct msg*,char*) ;
 int memset (struct msg*,int ,int) ;
 scalar_t__ npe_recv_message (int ,struct msg*,char*) ;
 int pr_crit (char*,scalar_t__) ;

__attribute__((used)) static void hss_config(struct port *port)
{
 struct msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_CONFIG_WRITE;
 msg.hss_port = port->id;
 msg.index = HSS_CONFIG_TX_PCR;
 msg.data32 = PCR_FRM_PULSE_DISABLED | PCR_MSB_ENDIAN |
  PCR_TX_DATA_ENABLE | PCR_SOF_NO_FBIT;
 if (port->clock_type == CLOCK_INT)
  msg.data32 |= PCR_SYNC_CLK_DIR_OUTPUT;
 hss_npe_send(port, &msg, "HSS_SET_TX_PCR");

 msg.index = HSS_CONFIG_RX_PCR;
 msg.data32 ^= PCR_TX_DATA_ENABLE | PCR_DCLK_EDGE_RISING;
 hss_npe_send(port, &msg, "HSS_SET_RX_PCR");

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_CONFIG_WRITE;
 msg.hss_port = port->id;
 msg.index = HSS_CONFIG_CORE_CR;
 msg.data32 = (port->loopback ? CCR_LOOPBACK : 0) |
  (port->id ? CCR_SECOND_HSS : 0);
 hss_npe_send(port, &msg, "HSS_SET_CORE_CR");

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_CONFIG_WRITE;
 msg.hss_port = port->id;
 msg.index = HSS_CONFIG_CLOCK_CR;
 msg.data32 = port->clock_reg;
 hss_npe_send(port, &msg, "HSS_SET_CLOCK_CR");

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_CONFIG_WRITE;
 msg.hss_port = port->id;
 msg.index = HSS_CONFIG_TX_FCR;
 msg.data16a = FRAME_OFFSET;
 msg.data16b = FRAME_SIZE - 1;
 hss_npe_send(port, &msg, "HSS_SET_TX_FCR");

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_CONFIG_WRITE;
 msg.hss_port = port->id;
 msg.index = HSS_CONFIG_RX_FCR;
 msg.data16a = FRAME_OFFSET;
 msg.data16b = FRAME_SIZE - 1;
 hss_npe_send(port, &msg, "HSS_SET_RX_FCR");

 hss_config_set_lut(port);

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_CONFIG_LOAD;
 msg.hss_port = port->id;
 hss_npe_send(port, &msg, "HSS_LOAD_CONFIG");

 if (npe_recv_message(port->npe, &msg, "HSS_LOAD_CONFIG") ||

     msg.cmd != PORT_CONFIG_LOAD || msg.data32) {
  pr_crit("HSS-%i: HSS_LOAD_CONFIG failed\n", port->id);
  BUG();
 }


 npe_recv_message(port->npe, &msg, "FLUSH_IT");
}
