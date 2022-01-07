
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int duplex; scalar_t__ link; void* speed; } ;
struct ksz_port {int vid_member; TYPE_1__ phydev; } ;
struct ksz_device {int interface; int port_mask; int on_ports; int host_mask; int live_ports; struct ksz_port* ports; } ;


 int BIT (int) ;


 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;

 int PORT_802_1P_ENABLE ;
 int PORT_802_1P_REMAPPING ;
 int PORT_BROADCAST_STORM ;
 int PORT_DIFFSERV_ENABLE ;
 int PORT_GMII_1GPS_MODE ;
 int PORT_INTERFACE_GMII ;
 int PORT_INTERFACE_RGMII ;
 int PORT_INTERFACE_RMII ;
 int PORT_INTERFACE_TYPE ;
 int PORT_RGMII_ID_IN_ENABLE ;
 int PORT_RGMII_ID_OUT_ENABLE ;
 int P_802_1P_CTRL ;
 int P_BCAST_STORM_CTRL ;
 int P_PRIO_CTRL ;
 int REG_PORT_5_CTRL_6 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 int ksz8795_cfg_port_member (struct ksz_device*,int,int) ;
 int ksz8795_set_prio_queue (struct ksz_device*,int,int) ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int ,int) ;
 int ksz_read8 (struct ksz_device*,int ,int*) ;
 int ksz_write8 (struct ksz_device*,int ,int) ;

__attribute__((used)) static void ksz8795_port_setup(struct ksz_device *dev, int port, bool cpu_port)
{
 struct ksz_port *p = &dev->ports[port];
 u8 data8, member;


 ksz_port_cfg(dev, port, P_BCAST_STORM_CTRL, PORT_BROADCAST_STORM, 1);

 ksz8795_set_prio_queue(dev, port, 4);


 ksz_port_cfg(dev, port, P_PRIO_CTRL, PORT_DIFFSERV_ENABLE, 0);


 ksz_port_cfg(dev, port, P_802_1P_CTRL, PORT_802_1P_REMAPPING, 0);


 ksz_port_cfg(dev, port, P_PRIO_CTRL, PORT_802_1P_ENABLE, 1);

 if (cpu_port) {

  ksz_read8(dev, REG_PORT_5_CTRL_6, &data8);
  data8 &= ~PORT_INTERFACE_TYPE;
  data8 &= ~PORT_GMII_1GPS_MODE;
  switch (dev->interface) {
  case 129:
   p->phydev.speed = SPEED_100;
   break;
  case 128:
   data8 |= PORT_INTERFACE_RMII;
   p->phydev.speed = SPEED_100;
   break;
  case 130:
   data8 |= PORT_GMII_1GPS_MODE;
   data8 |= PORT_INTERFACE_GMII;
   p->phydev.speed = SPEED_1000;
   break;
  default:
   data8 &= ~PORT_RGMII_ID_IN_ENABLE;
   data8 &= ~PORT_RGMII_ID_OUT_ENABLE;
   if (dev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
       dev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
    data8 |= PORT_RGMII_ID_IN_ENABLE;
   if (dev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
       dev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
    data8 |= PORT_RGMII_ID_OUT_ENABLE;
   data8 |= PORT_GMII_1GPS_MODE;
   data8 |= PORT_INTERFACE_RGMII;
   p->phydev.speed = SPEED_1000;
   break;
  }
  ksz_write8(dev, REG_PORT_5_CTRL_6, data8);
  p->phydev.duplex = 1;

  member = dev->port_mask;
  dev->on_ports = dev->host_mask;
  dev->live_ports = dev->host_mask;
 } else {
  member = dev->host_mask | p->vid_member;
  dev->on_ports |= BIT(port);


  if (p->phydev.link)
   dev->live_ports |= BIT(port);
 }
 ksz8795_cfg_port_member(dev, port, member);
}
