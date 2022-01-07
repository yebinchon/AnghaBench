
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct filter_entry {scalar_t__ locked; } ;
struct TYPE_2__ {struct filter_entry* ftid_tab; scalar_t__ nftids; scalar_t__ sftid_base; } ;
struct adapter {TYPE_1__ tids; } ;


 int delete_filter (struct adapter*,unsigned int) ;
 struct adapter* netdev2adap (struct net_device const*) ;

int cxgb4_remove_server_filter(const struct net_device *dev, unsigned int stid,
  unsigned int queue, bool ipv6)
{
 struct filter_entry *f;
 struct adapter *adap;

 adap = netdev2adap(dev);


 stid -= adap->tids.sftid_base;
 stid += adap->tids.nftids;

 f = &adap->tids.ftid_tab[stid];

 f->locked = 0;

 return delete_filter(adap, stid);
}
