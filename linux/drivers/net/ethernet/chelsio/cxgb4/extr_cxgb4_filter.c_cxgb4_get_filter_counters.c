
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 int get_filter_count (struct adapter*,unsigned int,int *,int *,int) ;
 struct adapter* netdev2adap (struct net_device*) ;

int cxgb4_get_filter_counters(struct net_device *dev, unsigned int fidx,
         u64 *hitcnt, u64 *bytecnt, bool hash)
{
 struct adapter *adapter = netdev2adap(dev);

 return get_filter_count(adapter, fidx, hitcnt, bytecnt, hash);
}
