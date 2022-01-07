
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_mac_addr {int mac_addr; int * group_addr_status; int * group_addr; int * res; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int ARRAY_SIZE (int *) ;
 int DBG_MIB ;
 int GFP_KERNEL ;
 int MIB_MAC_ADDR ;
 int at76_dbg (int ,char*,int ,int,int ,int ) ;
 int at76_get_mib (int ,int ,struct mib_mac_addr*,int) ;
 int kfree (struct mib_mac_addr*) ;
 struct mib_mac_addr* kmalloc (int,int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_mac_addr(struct at76_priv *priv)
{
 int i;
 int ret;
 struct mib_mac_addr *m = kmalloc(sizeof(struct mib_mac_addr),
      GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_MAC_ADDR, m,
      sizeof(struct mib_mac_addr));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (MAC_ADDR) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB MAC_ADDR: mac_addr %pM res 0x%x 0x%x",
   wiphy_name(priv->hw->wiphy),
   m->mac_addr, m->res[0], m->res[1]);
 for (i = 0; i < ARRAY_SIZE(m->group_addr); i++)
  at76_dbg(DBG_MIB, "%s: MIB MAC_ADDR: group addr %d: %pM, "
    "status %d", wiphy_name(priv->hw->wiphy), i,
    m->group_addr[i], m->group_addr_status[i]);
exit:
 kfree(m);
}
