
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct libipw_security {int flags; scalar_t__* key_sizes; scalar_t__ level; scalar_t__ auth_mode; scalar_t__ enabled; int encrypt; int active_key; int * keys; int * encode_alg; } ;
struct TYPE_6__ {int capability; } ;
struct ipw_priv {int status; TYPE_3__ assoc_request; TYPE_2__* ieee; int capability; } ;
struct TYPE_4__ {scalar_t__* key_sizes; int flags; scalar_t__ auth_mode; scalar_t__ enabled; scalar_t__ level; int encrypt; int active_key; int * keys; int * encode_alg; } ;
struct TYPE_5__ {int host_encrypt; TYPE_1__ sec; } ;


 int CAP_PRIVACY_ON ;
 int CAP_SHARED_KEY ;
 int IPW_DEBUG_ASSOC (char*) ;
 int SEC_ACTIVE_KEY ;
 int SEC_AUTH_MODE ;
 int SEC_ENABLED ;
 int SEC_ENCRYPT ;
 int SEC_LEVEL ;
 scalar_t__ SEC_LEVEL_1 ;
 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int STATUS_SECURITY_UPDATED ;
 scalar_t__ WLAN_AUTH_SHARED_KEY ;
 int WLAN_CAPABILITY_PRIVACY ;
 int cpu_to_le16 (int ) ;
 int ipw_disassociate (struct ipw_priv*) ;
 int ipw_set_hwcrypto_keys (struct ipw_priv*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void shim__set_security(struct net_device *dev,
          struct libipw_security *sec)
{
 struct ipw_priv *priv = libipw_priv(dev);
 int i;
 for (i = 0; i < 4; i++) {
  if (sec->flags & (1 << i)) {
   priv->ieee->sec.encode_alg[i] = sec->encode_alg[i];
   priv->ieee->sec.key_sizes[i] = sec->key_sizes[i];
   if (sec->key_sizes[i] == 0)
    priv->ieee->sec.flags &= ~(1 << i);
   else {
    memcpy(priv->ieee->sec.keys[i], sec->keys[i],
           sec->key_sizes[i]);
    priv->ieee->sec.flags |= (1 << i);
   }
   priv->status |= STATUS_SECURITY_UPDATED;
  } else if (sec->level != SEC_LEVEL_1)
   priv->ieee->sec.flags &= ~(1 << i);
 }

 if (sec->flags & SEC_ACTIVE_KEY) {
  priv->ieee->sec.active_key = sec->active_key;
  priv->ieee->sec.flags |= SEC_ACTIVE_KEY;
  priv->status |= STATUS_SECURITY_UPDATED;
 } else
  priv->ieee->sec.flags &= ~SEC_ACTIVE_KEY;

 if ((sec->flags & SEC_AUTH_MODE) &&
     (priv->ieee->sec.auth_mode != sec->auth_mode)) {
  priv->ieee->sec.auth_mode = sec->auth_mode;
  priv->ieee->sec.flags |= SEC_AUTH_MODE;
  if (sec->auth_mode == WLAN_AUTH_SHARED_KEY)
   priv->capability |= CAP_SHARED_KEY;
  else
   priv->capability &= ~CAP_SHARED_KEY;
  priv->status |= STATUS_SECURITY_UPDATED;
 }

 if (sec->flags & SEC_ENABLED && priv->ieee->sec.enabled != sec->enabled) {
  priv->ieee->sec.flags |= SEC_ENABLED;
  priv->ieee->sec.enabled = sec->enabled;
  priv->status |= STATUS_SECURITY_UPDATED;
  if (sec->enabled)
   priv->capability |= CAP_PRIVACY_ON;
  else
   priv->capability &= ~CAP_PRIVACY_ON;
 }

 if (sec->flags & SEC_ENCRYPT)
  priv->ieee->sec.encrypt = sec->encrypt;

 if (sec->flags & SEC_LEVEL && priv->ieee->sec.level != sec->level) {
  priv->ieee->sec.level = sec->level;
  priv->ieee->sec.flags |= SEC_LEVEL;
  priv->status |= STATUS_SECURITY_UPDATED;
 }

 if (!priv->ieee->host_encrypt && (sec->flags & SEC_ENCRYPT))
  ipw_set_hwcrypto_keys(priv);
}
