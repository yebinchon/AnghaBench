
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct addr_sync_ctx {int consumed; scalar_t__ flush; struct net_device* ndev; int const* addr; } ;


 int cpsw_set_mc (struct net_device*,int const*,int,int) ;
 int cpsw_update_vlan_mc ;
 int vlan_for_each (struct net_device*,int ,struct addr_sync_ctx*) ;

__attribute__((used)) static int cpsw_add_mc_addr(struct net_device *ndev, const u8 *addr, int num)
{
 struct addr_sync_ctx sync_ctx;
 int ret;

 sync_ctx.consumed = 0;
 sync_ctx.addr = addr;
 sync_ctx.ndev = ndev;
 sync_ctx.flush = 0;

 ret = vlan_for_each(ndev, cpsw_update_vlan_mc, &sync_ctx);
 if (sync_ctx.consumed < num && !ret)
  ret = cpsw_set_mc(ndev, addr, -1, 1);

 return ret;
}
