
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rss_size; } ;
struct nicvf {TYPE_1__ rss_info; } ;
struct net_device {int dummy; } ;


 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 nicvf_get_rxfh_indir_size(struct net_device *dev)
{
 struct nicvf *nic = netdev_priv(dev);

 return nic->rss_info.rss_size;
}
