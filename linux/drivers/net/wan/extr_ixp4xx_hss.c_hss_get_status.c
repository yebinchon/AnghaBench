
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port {int id; int npe; } ;
struct msg {int data32; int hss_port; int cmd; } ;
typedef int msg ;


 int BUG () ;
 int PORT_ERROR_READ ;
 int hss_npe_send (struct port*,struct msg*,char*) ;
 int memset (struct msg*,int ,int) ;
 scalar_t__ npe_recv_message (int ,struct msg*,char*) ;
 int pr_crit (char*,int ) ;

__attribute__((used)) static u32 hss_get_status(struct port *port)
{
 struct msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PORT_ERROR_READ;
 msg.hss_port = port->id;
 hss_npe_send(port, &msg, "PORT_ERROR_READ");
 if (npe_recv_message(port->npe, &msg, "PORT_ERROR_READ")) {
  pr_crit("HSS-%i: unable to read HSS status\n", port->id);
  BUG();
 }

 return msg.data32;
}
