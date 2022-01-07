
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mwifiex_private {int bss_mode; int adapter; } ;
struct mwifiex_bssdescriptor {scalar_t__ channel; scalar_t__ bss_band; } ;


 int ERROR ;


 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_get_cfp (struct mwifiex_private*,int ,int ,int ) ;
 int mwifiex_is_network_compatible (struct mwifiex_private*,struct mwifiex_bssdescriptor*,int) ;

int mwifiex_check_network_compatibility(struct mwifiex_private *priv,
     struct mwifiex_bssdescriptor *bss_desc)
{
 int ret = -1;

 if (!bss_desc)
  return -1;

 if ((mwifiex_get_cfp(priv, (u8) bss_desc->bss_band,
        (u16) bss_desc->channel, 0))) {
  switch (priv->bss_mode) {
  case 128:
  case 129:
   ret = mwifiex_is_network_compatible(priv, bss_desc,
           priv->bss_mode);
   if (ret)
    mwifiex_dbg(priv->adapter, ERROR,
         "Incompatible network settings\n");
   break;
  default:
   ret = 0;
  }
 }

 return ret;
}
