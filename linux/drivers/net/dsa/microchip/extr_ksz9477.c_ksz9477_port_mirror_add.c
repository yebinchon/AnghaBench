
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct dsa_mall_mirror_tc_entry {int to_local_port; } ;


 int PORT_MIRROR_RX ;
 int PORT_MIRROR_SNIFFER ;
 int PORT_MIRROR_TX ;
 int P_MIRROR_CTRL ;
 int SW_MIRROR_RX_TX ;
 int S_MIRROR_CTRL ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int ,int) ;

__attribute__((used)) static int ksz9477_port_mirror_add(struct dsa_switch *ds, int port,
       struct dsa_mall_mirror_tc_entry *mirror,
       bool ingress)
{
 struct ksz_device *dev = ds->priv;

 if (ingress)
  ksz_port_cfg(dev, port, P_MIRROR_CTRL, PORT_MIRROR_RX, 1);
 else
  ksz_port_cfg(dev, port, P_MIRROR_CTRL, PORT_MIRROR_TX, 1);

 ksz_port_cfg(dev, port, P_MIRROR_CTRL, PORT_MIRROR_SNIFFER, 0);


 ksz_port_cfg(dev, mirror->to_local_port, P_MIRROR_CTRL,
       PORT_MIRROR_SNIFFER, 1);

 ksz_cfg(dev, S_MIRROR_CTRL, SW_MIRROR_RX_TX, 0);

 return 0;
}
