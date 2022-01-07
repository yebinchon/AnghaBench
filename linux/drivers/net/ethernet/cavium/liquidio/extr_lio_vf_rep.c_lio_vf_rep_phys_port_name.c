
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int pf_num; } ;
struct net_device {int dummy; } ;
struct lio_vf_rep_desc {int ifidx; struct octeon_device* oct; } ;


 int EOPNOTSUPP ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;
 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static int
lio_vf_rep_phys_port_name(struct net_device *dev,
     char *buf, size_t len)
{
 struct lio_vf_rep_desc *vf_rep = netdev_priv(dev);
 struct octeon_device *oct = vf_rep->oct;
 int ret;

 ret = snprintf(buf, len, "pf%dvf%d", oct->pf_num,
         vf_rep->ifidx - oct->pf_num * 64 - 1);
 if (ret >= len)
  return -EOPNOTSUPP;

 return 0;
}
