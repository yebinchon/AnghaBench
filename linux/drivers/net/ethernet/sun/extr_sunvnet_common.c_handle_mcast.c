
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnet_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ stype; int sid; int stype_env; int type; } ;
struct vio_net_mcast_info {TYPE_1__ tag; } ;
struct net_device {int name; } ;


 scalar_t__ VIO_SUBTYPE_ACK ;
 struct net_device* VNET_PORT_TO_NET_DEVICE (struct vnet_port*) ;
 int pr_err (char*,int ,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int handle_mcast(struct vnet_port *port, void *msgbuf)
{
 struct vio_net_mcast_info *pkt = msgbuf;
 struct net_device *dev = VNET_PORT_TO_NET_DEVICE(port);

 if (pkt->tag.stype != VIO_SUBTYPE_ACK)
  pr_err("%s: Got unexpected MCAST reply [%02x:%02x:%04x:%08x]\n",
         dev->name,
         pkt->tag.type,
         pkt->tag.stype,
         pkt->tag.stype_env,
         pkt->tag.sid);

 return 0;
}
