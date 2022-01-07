
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t idx; int seq; scalar_t__ key; int key_len; int alg; scalar_t__ err; } ;
struct TYPE_10__ {TYPE_3__ crypt; } ;
struct prism2_hostapd_param {TYPE_4__ u; int sta_addr; } ;
struct lib80211_crypt_data {int priv; TYPE_2__* ops; } ;
struct TYPE_7__ {size_t tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct TYPE_11__ {int ap; TYPE_1__ crypt_info; } ;
typedef TYPE_5__ local_info_t ;
struct TYPE_8__ {int (* get_key ) (scalar_t__,int,int ,int ) ;int name; } ;


 int EINVAL ;
 int HOSTAP_CRYPT_ALG_NAME_LEN ;
 scalar_t__ HOSTAP_CRYPT_ERR_UNKNOWN_ADDR ;
 size_t WEP_KEYS ;
 void* ap_crypt_get_ptrs (int ,int ,int ,struct lib80211_crypt_data***) ;
 int hostap_handle_sta_release (void*) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int strncpy (int ,int ,int ) ;
 int stub1 (scalar_t__,int,int ,int ) ;

__attribute__((used)) static int prism2_ioctl_get_encryption(local_info_t *local,
           struct prism2_hostapd_param *param,
           int param_len)
{
 struct lib80211_crypt_data **crypt;
 void *sta_ptr;
 int max_key_len;

 param->u.crypt.err = 0;

 max_key_len = param_len -
  (int) ((char *) param->u.crypt.key - (char *) param);
 if (max_key_len < 0)
  return -EINVAL;

 if (is_broadcast_ether_addr(param->sta_addr)) {
  sta_ptr = ((void*)0);
  if (param->u.crypt.idx >= WEP_KEYS)
   param->u.crypt.idx = local->crypt_info.tx_keyidx;
  crypt = &local->crypt_info.crypt[param->u.crypt.idx];
 } else {
  param->u.crypt.idx = 0;
  sta_ptr = ap_crypt_get_ptrs(local->ap, param->sta_addr, 0,
         &crypt);

  if (sta_ptr == ((void*)0)) {
   param->u.crypt.err = HOSTAP_CRYPT_ERR_UNKNOWN_ADDR;
   return -EINVAL;
  }
 }

 if (*crypt == ((void*)0) || (*crypt)->ops == ((void*)0)) {
  memcpy(param->u.crypt.alg, "none", 5);
  param->u.crypt.key_len = 0;
  param->u.crypt.idx = 0xff;
 } else {
  strncpy(param->u.crypt.alg, (*crypt)->ops->name,
   HOSTAP_CRYPT_ALG_NAME_LEN);
  param->u.crypt.key_len = 0;

  memset(param->u.crypt.seq, 0, 8);
  if ((*crypt)->ops->get_key) {
   param->u.crypt.key_len =
    (*crypt)->ops->get_key(param->u.crypt.key,
             max_key_len,
             param->u.crypt.seq,
             (*crypt)->priv);
  }
 }

 if (sta_ptr)
  hostap_handle_sta_release(sta_ptr);

 return 0;
}
