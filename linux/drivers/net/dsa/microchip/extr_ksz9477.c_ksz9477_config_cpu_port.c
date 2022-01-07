
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_port {int vid_member; int on; int member; int phy; int sgmii; } ;
struct ksz_device {int port_cnt; int cpu_ports; int cpu_port; int host_mask; int port_mask; scalar_t__ interface; int member; int mib_port_cnt; int phy_port_cnt; int chip_id; struct ksz_port* ports; int dev; } ;
struct dsa_switch {int num_ports; struct ksz_device* priv; } ;
typedef scalar_t__ phy_interface_t ;


 int BR_STATE_DISABLED ;
 int dev_info (int ,char*,int ,int ) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 scalar_t__ ksz9477_get_interface (struct ksz_device*,int) ;
 int ksz9477_port_setup (struct ksz_device*,int,int) ;
 int ksz9477_port_stp_state_set (struct dsa_switch*,int,int ) ;
 int phy_modes (scalar_t__) ;

__attribute__((used)) static void ksz9477_config_cpu_port(struct dsa_switch *ds)
{
 struct ksz_device *dev = ds->priv;
 struct ksz_port *p;
 int i;

 ds->num_ports = dev->port_cnt;

 for (i = 0; i < dev->port_cnt; i++) {
  if (dsa_is_cpu_port(ds, i) && (dev->cpu_ports & (1 << i))) {
   phy_interface_t interface;

   dev->cpu_port = i;
   dev->host_mask = (1 << dev->cpu_port);
   dev->port_mask |= dev->host_mask;





   interface = ksz9477_get_interface(dev, i);
   if (!dev->interface)
    dev->interface = interface;
   if (interface && interface != dev->interface)
    dev_info(dev->dev,
      "use %s instead of %s\n",
       phy_modes(dev->interface),
       phy_modes(interface));


   ksz9477_port_setup(dev, i, 1);
   p = &dev->ports[dev->cpu_port];
   p->vid_member = dev->port_mask;
   p->on = 1;
  }
 }

 dev->member = dev->host_mask;

 for (i = 0; i < dev->mib_port_cnt; i++) {
  if (i == dev->cpu_port)
   continue;
  p = &dev->ports[i];




  p->vid_member = (1 << i);
  p->member = dev->port_mask;
  ksz9477_port_stp_state_set(ds, i, BR_STATE_DISABLED);
  p->on = 1;
  if (i < dev->phy_port_cnt)
   p->phy = 1;
  if (dev->chip_id == 0x00947700 && i == 6) {
   p->sgmii = 1;


   p->phy = 0;
  }
 }
}
