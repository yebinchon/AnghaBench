
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qede_dev {scalar_t__ vxlan_dst_port; scalar_t__ geneve_dst_port; } ;



void qede_udp_ports_update(void *dev, u16 vxlan_port, u16 geneve_port)
{
 struct qede_dev *edev = dev;

 if (edev->vxlan_dst_port != vxlan_port)
  edev->vxlan_dst_port = 0;

 if (edev->geneve_dst_port != geneve_port)
  edev->geneve_dst_port = 0;
}
