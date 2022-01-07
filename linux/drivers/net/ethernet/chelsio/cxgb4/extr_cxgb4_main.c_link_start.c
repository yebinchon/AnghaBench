
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct port_info {TYPE_1__* adapter; int link_cfg; int tx_chan; int smt_idx; int xact_addr_filt; int viid; } ;
struct net_device {int features; int dev_addr; int mtu; } ;
struct TYPE_4__ {unsigned int pf; } ;


 int CXGB4_DCB_ENABLED ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int cxgb4_update_mac_filt (struct port_info*,int ,int *,int ,int,int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_enable_pi_params (TYPE_1__*,unsigned int,struct port_info*,int,int,int ) ;
 int t4_link_l1cfg (TYPE_1__*,unsigned int,int ,int *) ;
 int t4_set_rxmode (TYPE_1__*,unsigned int,int ,int ,int,int,int,int,int) ;

__attribute__((used)) static int link_start(struct net_device *dev)
{
 int ret;
 struct port_info *pi = netdev_priv(dev);
 unsigned int mb = pi->adapter->pf;





 ret = t4_set_rxmode(pi->adapter, mb, pi->viid, dev->mtu, -1, -1, -1,
       !!(dev->features & NETIF_F_HW_VLAN_CTAG_RX), 1);
 if (ret == 0)
  ret = cxgb4_update_mac_filt(pi, pi->viid, &pi->xact_addr_filt,
         dev->dev_addr, 1, &pi->smt_idx);
 if (ret == 0)
  ret = t4_link_l1cfg(pi->adapter, mb, pi->tx_chan,
        &pi->link_cfg);
 if (ret == 0) {
  local_bh_disable();
  ret = t4_enable_pi_params(pi->adapter, mb, pi, 1,
       1, CXGB4_DCB_ENABLED);
  local_bh_enable();
 }

 return ret;
}
