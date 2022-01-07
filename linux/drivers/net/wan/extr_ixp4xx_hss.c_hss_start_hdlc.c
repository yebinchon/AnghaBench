
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int id; } ;
struct msg {scalar_t__ data32; int hss_port; int cmd; } ;
typedef int msg ;


 int PKT_PIPE_FLOW_ENABLE ;
 int hss_npe_send (struct port*,struct msg*,char*) ;
 int memset (struct msg*,int ,int) ;

__attribute__((used)) static void hss_start_hdlc(struct port *port)
{
 struct msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PKT_PIPE_FLOW_ENABLE;
 msg.hss_port = port->id;
 msg.data32 = 0;
 hss_npe_send(port, &msg, "HSS_ENABLE_PKT_PIPE");
}
