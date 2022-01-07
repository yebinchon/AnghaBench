
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int duplex; scalar_t__ link; void* speed; } ;
struct ksz_port {int vid_member; TYPE_1__ phydev; } ;
struct ksz_device {int phy_port_cnt; int interface; int port_mask; int on_ports; int host_mask; int live_ports; int dev_mutex; scalar_t__ phy_errata_9477; struct ksz_port* ports; } ;


 int MTI_PVID_REPLACE ;


 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;

 int PORT_802_1P_PRIO_ENABLE ;
 int PORT_BACK_PRESSURE ;
 int PORT_BROADCAST_STORM ;
 int PORT_DIFFSERV_PRIO_ENABLE ;
 int PORT_FORCE_RX_FLOW_CTRL ;
 int PORT_FORCE_TX_FLOW_CTRL ;
 int PORT_MAC_LOOPBACK ;
 int PORT_RGMII_ID_EG_ENABLE ;
 int PORT_RGMII_ID_IG_ENABLE ;
 int PORT_TAIL_TAG_ENABLE ;
 int PORT_USER_PRIO_CEILING ;
 int P_BCAST_STORM_CTRL ;
 int P_PRIO_CTRL ;
 int REG_PORT_CTRL_0 ;
 int REG_PORT_MAC_CTRL_1 ;
 int REG_PORT_MRI_MAC_CTRL ;
 int REG_PORT_MTI_QUEUE_CTRL_0__4 ;
 int REG_PORT_PHY_INT_ENABLE ;
 int REG_PORT_XMII_CTRL_1 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 int ksz9477_cfg_port_member (struct ksz_device*,int,int) ;
 int ksz9477_phy_errata_setup (struct ksz_device*,int) ;
 int ksz9477_port_cfg32 (struct ksz_device*,int,int ,int ,int) ;
 int ksz9477_set_gbit (struct ksz_device*,int,int*) ;
 int ksz9477_set_xmii (struct ksz_device*,int,int*) ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int,int) ;
 int ksz_pread16 (struct ksz_device*,int,int ,int *) ;
 int ksz_pread8 (struct ksz_device*,int,int ,int*) ;
 int ksz_pwrite8 (struct ksz_device*,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ksz9477_port_setup(struct ksz_device *dev, int port, bool cpu_port)
{
 u8 data8;
 u8 member;
 u16 data16;
 struct ksz_port *p = &dev->ports[port];


 if (cpu_port)
  ksz_port_cfg(dev, port, REG_PORT_CTRL_0, PORT_TAIL_TAG_ENABLE,
        1);

 ksz_port_cfg(dev, port, REG_PORT_CTRL_0, PORT_MAC_LOOPBACK, 0);


 ksz_port_cfg(dev, port, REG_PORT_MAC_CTRL_1, PORT_BACK_PRESSURE, 1);


 ksz_port_cfg(dev, port, P_BCAST_STORM_CTRL, PORT_BROADCAST_STORM, 1);


 ksz_port_cfg(dev, port, P_PRIO_CTRL, PORT_DIFFSERV_PRIO_ENABLE, 0);


 ksz_port_cfg(dev, port, REG_PORT_MRI_MAC_CTRL, PORT_USER_PRIO_CEILING,
       0);
 ksz9477_port_cfg32(dev, port, REG_PORT_MTI_QUEUE_CTRL_0__4,
      MTI_PVID_REPLACE, 0);


 ksz_port_cfg(dev, port, P_PRIO_CTRL, PORT_802_1P_PRIO_ENABLE, 1);

 if (port < dev->phy_port_cnt) {

  ksz_port_cfg(dev, port, REG_PORT_CTRL_0,
        PORT_FORCE_TX_FLOW_CTRL | PORT_FORCE_RX_FLOW_CTRL,
        0);

  if (dev->phy_errata_9477)
   ksz9477_phy_errata_setup(dev, port);
 } else {

  ksz_port_cfg(dev, port, REG_PORT_CTRL_0,
        PORT_FORCE_TX_FLOW_CTRL | PORT_FORCE_RX_FLOW_CTRL,
        1);


  ksz_pread8(dev, port, REG_PORT_XMII_CTRL_1, &data8);
  switch (dev->interface) {
  case 129:
   ksz9477_set_xmii(dev, 0, &data8);
   ksz9477_set_gbit(dev, 0, &data8);
   p->phydev.speed = SPEED_100;
   break;
  case 128:
   ksz9477_set_xmii(dev, 1, &data8);
   ksz9477_set_gbit(dev, 0, &data8);
   p->phydev.speed = SPEED_100;
   break;
  case 130:
   ksz9477_set_xmii(dev, 2, &data8);
   ksz9477_set_gbit(dev, 1, &data8);
   p->phydev.speed = SPEED_1000;
   break;
  default:
   ksz9477_set_xmii(dev, 3, &data8);
   ksz9477_set_gbit(dev, 1, &data8);
   data8 &= ~PORT_RGMII_ID_IG_ENABLE;
   data8 &= ~PORT_RGMII_ID_EG_ENABLE;
   if (dev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
       dev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
    data8 |= PORT_RGMII_ID_IG_ENABLE;
   if (dev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
       dev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
    data8 |= PORT_RGMII_ID_EG_ENABLE;
   p->phydev.speed = SPEED_1000;
   break;
  }
  ksz_pwrite8(dev, port, REG_PORT_XMII_CTRL_1, data8);
  p->phydev.duplex = 1;
 }
 mutex_lock(&dev->dev_mutex);
 if (cpu_port) {
  member = dev->port_mask;
  dev->on_ports = dev->host_mask;
  dev->live_ports = dev->host_mask;
 } else {
  member = dev->host_mask | p->vid_member;
  dev->on_ports |= (1 << port);


  if (p->phydev.link)
   dev->live_ports |= (1 << port);
 }
 mutex_unlock(&dev->dev_mutex);
 ksz9477_cfg_port_member(dev, port, member);


 if (port < dev->phy_port_cnt)
  ksz_pread16(dev, port, REG_PORT_PHY_INT_ENABLE, &data16);
}
