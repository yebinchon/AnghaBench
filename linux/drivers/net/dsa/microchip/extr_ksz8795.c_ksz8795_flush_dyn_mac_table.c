
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct ksz_port {int on; } ;
struct ksz_device {int mib_port_cnt; struct ksz_port* ports; } ;


 int PORT_LEARN_DISABLE ;
 int P_STP_CTRL ;
 int SW_FLUSH_DYN_MAC_TABLE ;
 int S_FLUSH_TABLE_CTRL ;
 int TOTAL_PORT_NUM ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_pread8 (struct ksz_device*,int,int ,int*) ;
 int ksz_pwrite8 (struct ksz_device*,int,int ,int) ;

__attribute__((used)) static void ksz8795_flush_dyn_mac_table(struct ksz_device *dev, int port)
{
 u8 learn[TOTAL_PORT_NUM];
 int first, index, cnt;
 struct ksz_port *p;

 if ((uint)port < TOTAL_PORT_NUM) {
  first = port;
  cnt = port + 1;
 } else {

  first = 0;
  cnt = dev->mib_port_cnt;
 }
 for (index = first; index < cnt; index++) {
  p = &dev->ports[index];
  if (!p->on)
   continue;
  ksz_pread8(dev, index, P_STP_CTRL, &learn[index]);
  if (!(learn[index] & PORT_LEARN_DISABLE))
   ksz_pwrite8(dev, index, P_STP_CTRL,
        learn[index] | PORT_LEARN_DISABLE);
 }
 ksz_cfg(dev, S_FLUSH_TABLE_CTRL, SW_FLUSH_DYN_MAC_TABLE, 1);
 for (index = first; index < cnt; index++) {
  p = &dev->ports[index];
  if (!p->on)
   continue;
  if (!(learn[index] & PORT_LEARN_DISABLE))
   ksz_pwrite8(dev, index, P_STP_CTRL, learn[index]);
 }
}
