
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int min_mtu; int hard_header_len; int * header_ops; scalar_t__ addr_len; int type; void* max_mtu; void* mtu; int priv_flags; } ;


 int ARPHRD_RAWHDLC ;
 void* HDLC_MAX_MTU ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int IFF_WAN_HDLC ;
 int hdlc_null_ops ;

__attribute__((used)) static void hdlc_setup_dev(struct net_device *dev)
{



 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->priv_flags = IFF_WAN_HDLC;
 dev->mtu = HDLC_MAX_MTU;
 dev->min_mtu = 68;
 dev->max_mtu = HDLC_MAX_MTU;
 dev->type = ARPHRD_RAWHDLC;
 dev->hard_header_len = 16;
 dev->addr_len = 0;
 dev->header_ops = &hdlc_null_ops;
}
