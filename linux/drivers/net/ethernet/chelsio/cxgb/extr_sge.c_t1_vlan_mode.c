
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int sge_control; } ;
struct adapter {scalar_t__ regs; scalar_t__ open_device_map; struct sge* sge; } ;
typedef int netdev_features_t ;


 scalar_t__ A_SG_CONTROL ;
 int F_VLAN_XTRACT ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void t1_vlan_mode(struct adapter *adapter, netdev_features_t features)
{
 struct sge *sge = adapter->sge;

 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  sge->sge_control |= F_VLAN_XTRACT;
 else
  sge->sge_control &= ~F_VLAN_XTRACT;
 if (adapter->open_device_map) {
  writel(sge->sge_control, adapter->regs + A_SG_CONTROL);
  readl(adapter->regs + A_SG_CONTROL);
 }
}
