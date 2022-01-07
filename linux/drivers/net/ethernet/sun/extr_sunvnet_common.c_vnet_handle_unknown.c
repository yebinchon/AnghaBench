
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lp; } ;
struct vnet_port {TYPE_1__ vio; } ;
struct vio_msg_tag {int sid; int stype_env; int stype; int type; } ;


 int ECONNRESET ;
 int ldc_disconnect (int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int vnet_handle_unknown(struct vnet_port *port, void *arg)
{
 struct vio_msg_tag *pkt = arg;

 pr_err("Received unknown msg [%02x:%02x:%04x:%08x]\n",
        pkt->type, pkt->stype, pkt->stype_env, pkt->sid);
 pr_err("Resetting connection\n");

 ldc_disconnect(port->vio.lp);

 return -ECONNRESET;
}
