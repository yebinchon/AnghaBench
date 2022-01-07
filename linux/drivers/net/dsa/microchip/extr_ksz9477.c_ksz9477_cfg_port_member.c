
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ksz_device {TYPE_1__* ports; } ;
struct TYPE_2__ {int member; } ;


 int REG_PORT_VLAN_MEMBERSHIP__4 ;
 int ksz_pwrite32 (struct ksz_device*,int,int ,int ) ;

__attribute__((used)) static void ksz9477_cfg_port_member(struct ksz_device *dev, int port,
        u8 member)
{
 ksz_pwrite32(dev, port, REG_PORT_VLAN_MEMBERSHIP__4, member);
 dev->ports[port].member = member;
}
