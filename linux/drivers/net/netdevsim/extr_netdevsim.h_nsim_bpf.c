
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_bpf {scalar_t__ command; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ XDP_QUERY_PROG ;

__attribute__((used)) static inline int nsim_bpf(struct net_device *dev, struct netdev_bpf *bpf)
{
 return bpf->command == XDP_QUERY_PROG ? 0 : -EOPNOTSUPP;
}
