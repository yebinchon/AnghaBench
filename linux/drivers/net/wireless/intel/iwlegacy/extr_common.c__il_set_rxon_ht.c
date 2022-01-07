
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_rxon_cmd {int flags; } ;
struct TYPE_4__ {int protection; int extension_chan_offset; int enabled; } ;
struct il_priv {TYPE_2__ ht; TYPE_1__* ops; struct il_rxon_cmd staging; } ;
struct il_ht_config {int dummy; } ;
struct TYPE_3__ {int (* set_rxon_chain ) (struct il_priv*) ;} ;


 int D_ASSOC (char*,int ,int,int ) ;
 int IEEE80211_HT_OP_MODE_PROTECTION_20MHZ ;



 int IL_ERR (char*) ;
 int RXON_FLG_CHANNEL_MODE_LEGACY ;
 int RXON_FLG_CHANNEL_MODE_MIXED ;
 int RXON_FLG_CHANNEL_MODE_MSK ;
 int RXON_FLG_CHANNEL_MODE_PURE_40 ;
 int RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK ;
 int RXON_FLG_HT40_PROT_MSK ;
 int RXON_FLG_HT_OPERATING_MODE_POS ;
 int RXON_FLG_HT_PROT_MSK ;
 int cpu_to_le32 (int) ;
 scalar_t__ il_is_ht40_tx_allowed (struct il_priv*,int *) ;
 int le32_to_cpu (int) ;
 int stub1 (struct il_priv*) ;

__attribute__((used)) static void
_il_set_rxon_ht(struct il_priv *il, struct il_ht_config *ht_conf)
{
 struct il_rxon_cmd *rxon = &il->staging;

 if (!il->ht.enabled) {
  rxon->flags &=
      ~(RXON_FLG_CHANNEL_MODE_MSK |
        RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK | RXON_FLG_HT40_PROT_MSK
        | RXON_FLG_HT_PROT_MSK);
  return;
 }

 rxon->flags |=
     cpu_to_le32(il->ht.protection << RXON_FLG_HT_OPERATING_MODE_POS);




 rxon->flags &=
     ~(RXON_FLG_CHANNEL_MODE_MSK | RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK);
 if (il_is_ht40_tx_allowed(il, ((void*)0))) {

  if (il->ht.protection == IEEE80211_HT_OP_MODE_PROTECTION_20MHZ) {
   rxon->flags |= RXON_FLG_CHANNEL_MODE_PURE_40;

   switch (il->ht.extension_chan_offset) {
   case 130:
    rxon->flags &=
        ~RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK;
    break;
   case 129:
    rxon->flags |= RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK;
    break;
   }
  } else {

   switch (il->ht.extension_chan_offset) {
   case 130:
    rxon->flags &=
        ~(RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK);
    rxon->flags |= RXON_FLG_CHANNEL_MODE_MIXED;
    break;
   case 129:
    rxon->flags |= RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK;
    rxon->flags |= RXON_FLG_CHANNEL_MODE_MIXED;
    break;
   case 128:
   default:

    IL_ERR("invalid extension channel offset\n");
    break;
   }
  }
 } else {
  rxon->flags |= RXON_FLG_CHANNEL_MODE_LEGACY;
 }

 if (il->ops->set_rxon_chain)
  il->ops->set_rxon_chain(il);

 D_ASSOC("rxon flags 0x%X operation mode :0x%X "
  "extension channel offset 0x%x\n", le32_to_cpu(rxon->flags),
  il->ht.protection, il->ht.extension_chan_offset);
}
