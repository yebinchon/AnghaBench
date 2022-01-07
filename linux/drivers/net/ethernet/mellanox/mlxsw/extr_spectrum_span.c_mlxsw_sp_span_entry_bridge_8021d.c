
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* br_fdb_find_port (struct net_device const*,unsigned char*,int ) ;

__attribute__((used)) static struct net_device *
mlxsw_sp_span_entry_bridge_8021d(const struct net_device *br_dev,
     unsigned char *dmac)
{
 return br_fdb_find_port(br_dev, dmac, 0);
}
