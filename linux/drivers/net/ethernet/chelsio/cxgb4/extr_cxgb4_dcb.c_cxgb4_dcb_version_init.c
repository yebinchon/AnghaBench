
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_dcb_info {int dcb_version; } ;
struct port_info {struct port_dcb_info dcb; } ;
struct net_device {int dummy; } ;


 int FW_PORT_DCB_VER_AUTO ;
 struct port_info* netdev2pinfo (struct net_device*) ;

void cxgb4_dcb_version_init(struct net_device *dev)
{
 struct port_info *pi = netdev2pinfo(dev);
 struct port_dcb_info *dcb = &pi->dcb;




 dcb->dcb_version = FW_PORT_DCB_VER_AUTO;
}
