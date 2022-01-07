
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct net_device {int dev_addr; } ;
struct mwifiex_private {scalar_t__ bss_type; int * curr_addr; TYPE_1__* adapter; scalar_t__ bss_num; } ;
struct TYPE_2__ {struct mwifiex_private** priv; } ;


 int BIT_ULL (scalar_t__) ;
 int ENOTSUPP ;
 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_MAC_ADDRESS ;
 scalar_t__ MWIFIEX_BSS_TYPE_ANY ;
 scalar_t__ MWIFIEX_BSS_TYPE_P2P ;
 scalar_t__ MWIFIEX_MAC_LOCAL_ADMIN_BIT ;
 int ether_addr_copy (int ,int *) ;
 int ether_addr_to_u64 (int *) ;
 int mwifiex_dbg (TYPE_1__*,int ,char*,int) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;
 int u64_to_ether_addr (int ,int *) ;

int mwifiex_set_mac_address(struct mwifiex_private *priv,
       struct net_device *dev, bool external,
       u8 *new_mac)
{
 int ret;
 u64 mac_addr, old_mac_addr;

 old_mac_addr = ether_addr_to_u64(priv->curr_addr);

 if (external) {
  mac_addr = ether_addr_to_u64(new_mac);
 } else {

  if (priv->bss_type == MWIFIEX_BSS_TYPE_ANY)
   return -ENOTSUPP;

  mac_addr = old_mac_addr;

  if (priv->bss_type == MWIFIEX_BSS_TYPE_P2P) {
   mac_addr |= BIT_ULL(MWIFIEX_MAC_LOCAL_ADMIN_BIT);
   mac_addr += priv->bss_num;
  } else if (priv->adapter->priv[0] != priv) {

   mac_addr ^= BIT_ULL(priv->bss_type + 8);
   mac_addr += priv->bss_num;
  }
 }

 u64_to_ether_addr(mac_addr, priv->curr_addr);


 ret = mwifiex_send_cmd(priv, HostCmd_CMD_802_11_MAC_ADDRESS,
          HostCmd_ACT_GEN_SET, 0, ((void*)0), 1);

 if (ret) {
  u64_to_ether_addr(old_mac_addr, priv->curr_addr);
  mwifiex_dbg(priv->adapter, ERROR,
       "set mac address failed: ret=%d\n", ret);
  return ret;
 }

 ether_addr_copy(dev->dev_addr, priv->curr_addr);
 return 0;
}
