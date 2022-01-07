
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ksz_device {int port_mask; TYPE_1__* ports; } ;
struct TYPE_2__ {int member; } ;


 int PORT_VLAN_MEMBERSHIP ;
 int P_MIRROR_CTRL ;
 int ksz_pread8 (struct ksz_device*,int,int ,int*) ;
 int ksz_pwrite8 (struct ksz_device*,int,int ,int) ;

__attribute__((used)) static void ksz8795_cfg_port_member(struct ksz_device *dev, int port,
        u8 member)
{
 u8 data;

 ksz_pread8(dev, port, P_MIRROR_CTRL, &data);
 data &= ~PORT_VLAN_MEMBERSHIP;
 data |= (member & dev->port_mask);
 ksz_pwrite8(dev, port, P_MIRROR_CTRL, data);
 dev->ports[port].member = member;
}
