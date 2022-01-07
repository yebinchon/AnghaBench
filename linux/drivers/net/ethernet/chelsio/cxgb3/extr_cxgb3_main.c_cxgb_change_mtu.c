
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {int mac; struct adapter* adapter; } ;
struct net_device {int mtu; } ;
struct TYPE_3__ {scalar_t__ rev; int b_wnd; int a_wnd; int mtus; } ;
struct adapter {TYPE_2__** port; TYPE_1__ params; } ;
struct TYPE_4__ {int mtu; } ;


 int init_port_mtus (struct adapter*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 scalar_t__ offload_running (struct adapter*) ;
 int t3_load_mtus (struct adapter*,int ,int ,int ,int ) ;
 int t3_mac_set_mtu (int *,int) ;

__attribute__((used)) static int cxgb_change_mtu(struct net_device *dev, int new_mtu)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 int ret;

 if ((ret = t3_mac_set_mtu(&pi->mac, new_mtu)))
  return ret;
 dev->mtu = new_mtu;
 init_port_mtus(adapter);
 if (adapter->params.rev == 0 && offload_running(adapter))
  t3_load_mtus(adapter, adapter->params.mtus,
        adapter->params.a_wnd, adapter->params.b_wnd,
        adapter->port[0]->mtu);
 return 0;
}
