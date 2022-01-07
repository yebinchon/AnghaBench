
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct addr_sync_ctx {int consumed; struct net_device* ndev; int const* addr; } ;


 int cpsw_purge_vlan_mc ;
 int cpsw_set_mc (struct net_device*,int const*,int,int ) ;
 int vlan_for_each (struct net_device*,int ,struct addr_sync_ctx*) ;

__attribute__((used)) static int cpsw_purge_all_mc(struct net_device *ndev, const u8 *addr, int num)
{
 struct addr_sync_ctx sync_ctx;

 sync_ctx.addr = addr;
 sync_ctx.ndev = ndev;
 sync_ctx.consumed = 0;

 vlan_for_each(ndev, cpsw_purge_vlan_mc, &sync_ctx);
 if (sync_ctx.consumed < num)
  cpsw_set_mc(ndev, addr, -1, 0);

 return 0;
}
