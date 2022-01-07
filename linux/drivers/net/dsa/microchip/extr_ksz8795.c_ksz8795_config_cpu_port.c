
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_port {int on; int phy; int fiber; int member; int vid_member; } ;
struct ksz_device {int port_cnt; size_t cpu_port; int phy_port_cnt; struct ksz_port* ports; int port_mask; int host_mask; int member; } ;
struct dsa_switch {int num_ports; struct ksz_device* priv; } ;


 int BIT (int) ;
 int BR_STATE_DISABLED ;
 int PORT_FIBER_MODE ;
 int PORT_FORCE_FLOW_CTRL ;
 int P_REMOTE_STATUS ;
 int P_STP_CTRL ;
 int REG_SW_CTRL_2 ;
 int SWITCH_PORT_NUM ;
 int SW_LEGAL_PACKET_DISABLE ;
 int SW_TAIL_TAG_ENABLE ;
 int S_TAIL_TAG_CTRL ;
 int ksz8795_port_setup (struct ksz_device*,size_t,int) ;
 int ksz8795_port_stp_state_set (struct dsa_switch*,int,int ) ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int ,int) ;
 int ksz_pread8 (struct ksz_device*,int,int ,int*) ;

__attribute__((used)) static void ksz8795_config_cpu_port(struct dsa_switch *ds)
{
 struct ksz_device *dev = ds->priv;
 struct ksz_port *p;
 u8 remote;
 int i;

 ds->num_ports = dev->port_cnt + 1;


 ksz_cfg(dev, REG_SW_CTRL_2, SW_LEGAL_PACKET_DISABLE, 1);
 ksz_cfg(dev, S_TAIL_TAG_CTRL, SW_TAIL_TAG_ENABLE, 1);

 p = &dev->ports[dev->cpu_port];
 p->vid_member = dev->port_mask;
 p->on = 1;

 ksz8795_port_setup(dev, dev->cpu_port, 1);
 dev->member = dev->host_mask;

 for (i = 0; i < SWITCH_PORT_NUM; i++) {
  p = &dev->ports[i];




  p->vid_member = BIT(i);
  p->member = dev->port_mask;
  ksz8795_port_stp_state_set(ds, i, BR_STATE_DISABLED);


  if (i == dev->port_cnt)
   break;
  p->on = 1;
  p->phy = 1;
 }
 for (i = 0; i < dev->phy_port_cnt; i++) {
  p = &dev->ports[i];
  if (!p->on)
   continue;
  ksz_pread8(dev, i, P_REMOTE_STATUS, &remote);
  if (remote & PORT_FIBER_MODE)
   p->fiber = 1;
  if (p->fiber)
   ksz_port_cfg(dev, i, P_STP_CTRL, PORT_FORCE_FLOW_CTRL,
         1);
  else
   ksz_port_cfg(dev, i, P_STP_CTRL, PORT_FORCE_FLOW_CTRL,
         0);
 }
}
