
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mib_mac_wep {int encryption_level; int * wep_default_keyvalue; int wep_default_key_id; int wep_excluded_count; int wep_icv_error_count; int exclude_unencrypted; int wep_key_mapping_len; int privacy_invoked; } ;
struct at76_priv {TYPE_1__* hw; int udev; } ;
struct TYPE_2__ {int wiphy; } ;


 int DBG_MIB ;
 int GFP_KERNEL ;
 int MIB_MAC_WEP ;
 int WEP_KEYS ;
 int WEP_LARGE_KEY_LEN ;
 int WEP_SMALL_KEY_LEN ;
 int at76_dbg (int ,char*,int ,int,int,int ,...) ;
 int at76_get_mib (int ,int ,struct mib_mac_wep*,int) ;
 int kfree (struct mib_mac_wep*) ;
 struct mib_mac_wep* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int wiphy_err (int ,char*,int) ;
 int wiphy_name (int ) ;

__attribute__((used)) static void at76_dump_mib_mac_wep(struct at76_priv *priv)
{
 int i;
 int ret;
 int key_len;
 struct mib_mac_wep *m = kmalloc(sizeof(struct mib_mac_wep), GFP_KERNEL);

 if (!m)
  return;

 ret = at76_get_mib(priv->udev, MIB_MAC_WEP, m,
      sizeof(struct mib_mac_wep));
 if (ret < 0) {
  wiphy_err(priv->hw->wiphy,
     "at76_get_mib (MAC_WEP) failed: %d\n", ret);
  goto exit;
 }

 at76_dbg(DBG_MIB, "%s: MIB MAC_WEP: priv_invoked %u def_key_id %u "
   "key_len %u excl_unencr %u wep_icv_err %u wep_excluded %u "
   "encr_level %u key %d", wiphy_name(priv->hw->wiphy),
   m->privacy_invoked, m->wep_default_key_id,
   m->wep_key_mapping_len, m->exclude_unencrypted,
   le32_to_cpu(m->wep_icv_error_count),
   le32_to_cpu(m->wep_excluded_count), m->encryption_level,
   m->wep_default_key_id);

 key_len = (m->encryption_level == 1) ?
     WEP_SMALL_KEY_LEN : WEP_LARGE_KEY_LEN;

 for (i = 0; i < WEP_KEYS; i++)
  at76_dbg(DBG_MIB, "%s: MIB MAC_WEP: key %d: %*phD",
    wiphy_name(priv->hw->wiphy), i,
    key_len, m->wep_default_keyvalue[i]);
exit:
 kfree(m);
}
