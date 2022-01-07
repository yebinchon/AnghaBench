
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct dsa_mall_mirror_tc_entry {int to_local_port; scalar_t__ ingress; } ;


 int PORT_MIRROR_RX ;
 int PORT_MIRROR_SNIFFER ;
 int PORT_MIRROR_TX ;
 int P_MIRROR_CTRL ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int,int) ;
 int ksz_pread8 (struct ksz_device*,int,int ,int*) ;

__attribute__((used)) static void ksz9477_port_mirror_del(struct dsa_switch *ds, int port,
        struct dsa_mall_mirror_tc_entry *mirror)
{
 struct ksz_device *dev = ds->priv;
 u8 data;

 if (mirror->ingress)
  ksz_port_cfg(dev, port, P_MIRROR_CTRL, PORT_MIRROR_RX, 0);
 else
  ksz_port_cfg(dev, port, P_MIRROR_CTRL, PORT_MIRROR_TX, 0);

 ksz_pread8(dev, port, P_MIRROR_CTRL, &data);

 if (!(data & (PORT_MIRROR_RX | PORT_MIRROR_TX)))
  ksz_port_cfg(dev, mirror->to_local_port, P_MIRROR_CTRL,
        PORT_MIRROR_SNIFFER, 0);
}
