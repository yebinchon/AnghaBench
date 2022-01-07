
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port {int npe; int id; } ;
struct msg {int dummy; } ;


 int BUG () ;
 int npe_name (int ) ;
 scalar_t__ npe_send_message (int ,struct msg*,char const*) ;
 int pr_crit (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void hss_npe_send(struct port *port, struct msg *msg, const char* what)
{
 u32 *val = (u32*)msg;
 if (npe_send_message(port->npe, msg, what)) {
  pr_crit("HSS-%i: unable to send command [%08X:%08X] to %s\n",
   port->id, val[0], val[1], npe_name(port->npe));
  BUG();
 }
}
