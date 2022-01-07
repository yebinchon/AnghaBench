
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {size_t encoding_sa; int encrypt; int send_sci; int end_station; int scb; int * sa; } ;
struct macsec_tx_sa {scalar_t__ active; } ;
struct macsec_secy {int operational; int protect_frames; int replay_protect; int key_len; void* validate_frames; int replay_window; struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {struct macsec_secy secy; } ;


 int EINVAL ;
 size_t IFLA_MACSEC_CIPHER_SUITE ;
 size_t IFLA_MACSEC_ENCODING_SA ;
 size_t IFLA_MACSEC_ENCRYPT ;
 size_t IFLA_MACSEC_ES ;
 size_t IFLA_MACSEC_INC_SCI ;
 size_t IFLA_MACSEC_PROTECT ;
 size_t IFLA_MACSEC_REPLAY_PROTECT ;
 size_t IFLA_MACSEC_SCB ;
 size_t IFLA_MACSEC_VALIDATION ;
 size_t IFLA_MACSEC_WINDOW ;



 int MACSEC_GCM_AES_128_SAK_LEN ;
 int MACSEC_GCM_AES_256_SAK_LEN ;
 TYPE_1__* macsec_priv (struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u64 (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;
 struct macsec_tx_sa* rtnl_dereference (int ) ;

__attribute__((used)) static int macsec_changelink_common(struct net_device *dev,
        struct nlattr *data[])
{
 struct macsec_secy *secy;
 struct macsec_tx_sc *tx_sc;

 secy = &macsec_priv(dev)->secy;
 tx_sc = &secy->tx_sc;

 if (data[IFLA_MACSEC_ENCODING_SA]) {
  struct macsec_tx_sa *tx_sa;

  tx_sc->encoding_sa = nla_get_u8(data[IFLA_MACSEC_ENCODING_SA]);
  tx_sa = rtnl_dereference(tx_sc->sa[tx_sc->encoding_sa]);

  secy->operational = tx_sa && tx_sa->active;
 }

 if (data[IFLA_MACSEC_WINDOW])
  secy->replay_window = nla_get_u32(data[IFLA_MACSEC_WINDOW]);

 if (data[IFLA_MACSEC_ENCRYPT])
  tx_sc->encrypt = !!nla_get_u8(data[IFLA_MACSEC_ENCRYPT]);

 if (data[IFLA_MACSEC_PROTECT])
  secy->protect_frames = !!nla_get_u8(data[IFLA_MACSEC_PROTECT]);

 if (data[IFLA_MACSEC_INC_SCI])
  tx_sc->send_sci = !!nla_get_u8(data[IFLA_MACSEC_INC_SCI]);

 if (data[IFLA_MACSEC_ES])
  tx_sc->end_station = !!nla_get_u8(data[IFLA_MACSEC_ES]);

 if (data[IFLA_MACSEC_SCB])
  tx_sc->scb = !!nla_get_u8(data[IFLA_MACSEC_SCB]);

 if (data[IFLA_MACSEC_REPLAY_PROTECT])
  secy->replay_protect = !!nla_get_u8(data[IFLA_MACSEC_REPLAY_PROTECT]);

 if (data[IFLA_MACSEC_VALIDATION])
  secy->validate_frames = nla_get_u8(data[IFLA_MACSEC_VALIDATION]);

 if (data[IFLA_MACSEC_CIPHER_SUITE]) {
  switch (nla_get_u64(data[IFLA_MACSEC_CIPHER_SUITE])) {
  case 130:
  case 128:
   secy->key_len = MACSEC_GCM_AES_128_SAK_LEN;
   break;
  case 129:
   secy->key_len = MACSEC_GCM_AES_256_SAK_LEN;
   break;
  default:
   return -EINVAL;
  }
 }

 return 0;
}
