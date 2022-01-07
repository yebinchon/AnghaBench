
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct mlxsw_sp_port {int dummy; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int mlxsw_sp_port_dev_addr_set (struct mlxsw_sp_port*,int ) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_set_mac_address(struct net_device *dev, void *p)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct sockaddr *addr = p;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 err = mlxsw_sp_port_dev_addr_set(mlxsw_sp_port, addr->sa_data);
 if (err)
  return err;
 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 return 0;
}
