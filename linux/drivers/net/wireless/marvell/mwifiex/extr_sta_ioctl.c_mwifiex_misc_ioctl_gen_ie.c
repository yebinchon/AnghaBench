
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mwifiex_private {int wpa_ie; int wpa_ie_len; struct mwifiex_adapter* adapter; } ;
struct mwifiex_ds_misc_gen_ie {int type; int len; int ie_data; } ;
struct mwifiex_adapter {int arp_filter_size; int arp_filter; } ;


 int ARP_FILTER_MAX_BUF_SIZE ;
 int ERROR ;
 int HostCmd_ACT_GEN_GET ;


 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_set_gen_ie_helper (struct mwifiex_private*,int ,int ) ;

__attribute__((used)) static int mwifiex_misc_ioctl_gen_ie(struct mwifiex_private *priv,
         struct mwifiex_ds_misc_gen_ie *gen_ie,
         u16 action)
{
 struct mwifiex_adapter *adapter = priv->adapter;

 switch (gen_ie->type) {
 case 128:
  if (action == HostCmd_ACT_GEN_GET) {
   gen_ie->len = priv->wpa_ie_len;
   memcpy(gen_ie->ie_data, priv->wpa_ie, gen_ie->len);
  } else {
   mwifiex_set_gen_ie_helper(priv, gen_ie->ie_data,
        (u16) gen_ie->len);
  }
  break;
 case 129:
  memset(adapter->arp_filter, 0, sizeof(adapter->arp_filter));
  if (gen_ie->len > ARP_FILTER_MAX_BUF_SIZE) {
   adapter->arp_filter_size = 0;
   mwifiex_dbg(adapter, ERROR,
        "invalid ARP filter size\n");
   return -1;
  } else {
   memcpy(adapter->arp_filter, gen_ie->ie_data,
          gen_ie->len);
   adapter->arp_filter_size = gen_ie->len;
  }
  break;
 default:
  mwifiex_dbg(adapter, ERROR, "invalid IE type\n");
  return -1;
 }
 return 0;
}
