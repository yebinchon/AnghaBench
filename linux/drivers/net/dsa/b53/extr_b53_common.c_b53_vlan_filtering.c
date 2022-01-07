
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {int vlan_enabled; TYPE_1__* ports; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;


 int B53_VLAN_PAGE ;
 int B53_VLAN_PORT_DEF_TAG (int) ;
 scalar_t__ b53_default_pvid (struct b53_device*) ;
 int b53_enable_vlan (struct b53_device*,int ,int) ;
 int b53_read16 (struct b53_device*,int ,int ,scalar_t__*) ;
 int b53_write16 (struct b53_device*,int ,int ,scalar_t__) ;

int b53_vlan_filtering(struct dsa_switch *ds, int port, bool vlan_filtering)
{
 struct b53_device *dev = ds->priv;
 u16 pvid, new_pvid;

 b53_read16(dev, B53_VLAN_PAGE, B53_VLAN_PORT_DEF_TAG(port), &pvid);
 new_pvid = pvid;
 if (!vlan_filtering) {



  dev->ports[port].pvid = pvid;
  new_pvid = b53_default_pvid(dev);
 } else {

  new_pvid = dev->ports[port].pvid;
 }

 if (pvid != new_pvid)
  b53_write16(dev, B53_VLAN_PAGE, B53_VLAN_PORT_DEF_TAG(port),
       new_pvid);

 b53_enable_vlan(dev, dev->vlan_enabled, vlan_filtering);

 return 0;
}
