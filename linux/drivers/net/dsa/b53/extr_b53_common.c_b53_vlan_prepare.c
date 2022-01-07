
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct dsa_switch {int vlan_filtering; struct b53_device* priv; } ;
struct b53_device {scalar_t__ num_vlans; } ;


 int EOPNOTSUPP ;
 int ERANGE ;
 int b53_enable_vlan (struct b53_device*,int,int ) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

int b53_vlan_prepare(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct b53_device *dev = ds->priv;

 if ((is5325(dev) || is5365(dev)) && vlan->vid_begin == 0)
  return -EOPNOTSUPP;

 if (vlan->vid_end > dev->num_vlans)
  return -ERANGE;

 b53_enable_vlan(dev, 1, ds->vlan_filtering);

 return 0;
}
