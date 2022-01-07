
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int dummy; } ;
struct adapter {int * port; } ;


 struct port_info* netdev_priv (int ) ;

__attribute__((used)) static inline struct port_info *adap2pinfo(struct adapter *adapter, int pidx)
{
 return netdev_priv(adapter->port[pidx]);
}
