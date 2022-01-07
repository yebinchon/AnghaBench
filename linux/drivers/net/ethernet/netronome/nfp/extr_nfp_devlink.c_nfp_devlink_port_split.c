
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int lock; } ;
struct nfp_eth_table_port {unsigned int port_lanes; int lanes; int index; scalar_t__ is_split; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;


 int EINVAL ;
 struct nfp_pf* devlink_priv (struct devlink*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfp_devlink_fill_eth_port_from_id (struct nfp_pf*,unsigned int,struct nfp_eth_table_port*) ;
 int nfp_devlink_set_lanes (struct nfp_pf*,int ,unsigned int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int
nfp_devlink_port_split(struct devlink *devlink, unsigned int port_index,
         unsigned int count, struct netlink_ext_ack *extack)
{
 struct nfp_pf *pf = devlink_priv(devlink);
 struct nfp_eth_table_port eth_port;
 unsigned int lanes;
 int ret;

 if (count < 2)
  return -EINVAL;

 mutex_lock(&pf->lock);

 rtnl_lock();
 ret = nfp_devlink_fill_eth_port_from_id(pf, port_index, &eth_port);
 rtnl_unlock();
 if (ret)
  goto out;

 if (eth_port.is_split || eth_port.port_lanes % count) {
  ret = -EINVAL;
  goto out;
 }


 lanes = eth_port.port_lanes / count;
 if (eth_port.lanes == 10 && count == 2)
  lanes = 8 / count;

 ret = nfp_devlink_set_lanes(pf, eth_port.index, lanes);
out:
 mutex_unlock(&pf->lock);

 return ret;
}
