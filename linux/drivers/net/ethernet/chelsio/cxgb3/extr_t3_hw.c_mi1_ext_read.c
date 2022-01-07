
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int mdio_lock; } ;


 int A_MI1_DATA ;
 int A_MI1_OP ;
 int F_BUSY ;
 int MDIO_ATTEMPTS ;
 int V_MDI_OP (int) ;
 int mi1_wr_addr (struct adapter*,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_wait_op_done (struct adapter*,int ,int ,int ,int ,int) ;
 int t3_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static int mi1_ext_read(struct net_device *dev, int phy_addr, int mmd_addr,
   u16 reg_addr)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 int ret;

 mutex_lock(&adapter->mdio_lock);
 ret = mi1_wr_addr(adapter, phy_addr, mmd_addr, reg_addr);
 if (!ret) {
  t3_write_reg(adapter, A_MI1_OP, V_MDI_OP(3));
  ret = t3_wait_op_done(adapter, A_MI1_OP, F_BUSY, 0,
          MDIO_ATTEMPTS, 10);
  if (!ret)
   ret = t3_read_reg(adapter, A_MI1_DATA);
 }
 mutex_unlock(&adapter->mdio_lock);
 return ret;
}
