
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int lock; } ;
struct nfp_eth_table_port {unsigned int port_lanes; int index; int is_split; } ;
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
nfp_devlink_port_unsplit(struct devlink *devlink, unsigned int port_index,
    struct netlink_ext_ack *extack)
{
 struct nfp_pf *pf = devlink_priv(devlink);
 struct nfp_eth_table_port eth_port;
 unsigned int lanes;
 int ret;

 mutex_lock(&pf->lock);

 rtnl_lock();
 ret = nfp_devlink_fill_eth_port_from_id(pf, port_index, &eth_port);
 rtnl_unlock();
 if (ret)
  goto out;

 if (!eth_port.is_split) {
  ret = -EINVAL;
  goto out;
 }


 lanes = eth_port.port_lanes;
 if (eth_port.port_lanes == 8)
  lanes = 10;

 ret = nfp_devlink_set_lanes(pf, eth_port.index, lanes);
out:
 mutex_unlock(&pf->lock);

 return ret;
}
