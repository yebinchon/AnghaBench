
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_mdomain {int tx_powerlevel; int channel_list; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int DBG_MIB ;
 int GFP_KERNEL ;
 int MIB_MDOMAIN ;
 int at76_dbg (int ,char*,int ,int,int ) ;
 int at76_get_mib (int ,int ,struct mib_mdomain*,int) ;
 int kfree (struct mib_mdomain*) ;
 struct mib_mdomain* kmalloc (int,int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_mdomain(struct at76_priv *priv)
{
 int ret;
 struct mib_mdomain *m = kmalloc(sizeof(struct mib_mdomain), GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_MDOMAIN, m,
      sizeof(struct mib_mdomain));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (MDOMAIN) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB MDOMAIN: channel_list %*phD",
   wiphy_name(priv->hw->wiphy),
   (int)sizeof(m->channel_list), m->channel_list);

 at76_dbg(DBG_MIB, "%s: MIB MDOMAIN: tx_powerlevel %*phD",
   wiphy_name(priv->hw->wiphy),
   (int)sizeof(m->tx_powerlevel), m->tx_powerlevel);
exit:
 kfree(m);
}
