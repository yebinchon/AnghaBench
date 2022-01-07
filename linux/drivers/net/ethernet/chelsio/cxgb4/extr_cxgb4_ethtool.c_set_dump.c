
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct cudbg_hdr {int dummy; } ;
struct cudbg_entity_hdr {int dummy; } ;
struct TYPE_2__ {int len; int flag; } ;
struct adapter {TYPE_1__ eth_dump; } ;


 int CUDBG_MAX_ENTITY ;
 scalar_t__ cxgb4_get_dump_length (struct adapter*,int ) ;
 struct adapter* netdev2adap (struct net_device*) ;

__attribute__((used)) static int set_dump(struct net_device *dev, struct ethtool_dump *eth_dump)
{
 struct adapter *adapter = netdev2adap(dev);
 u32 len = 0;

 len = sizeof(struct cudbg_hdr) +
       sizeof(struct cudbg_entity_hdr) * CUDBG_MAX_ENTITY;
 len += cxgb4_get_dump_length(adapter, eth_dump->flag);

 adapter->eth_dump.flag = eth_dump->flag;
 adapter->eth_dump.len = len;
 return 0;
}
