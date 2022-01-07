
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct mwifiex_private {int adapter; } ;
struct mwifiex_coalesce_rule {void* pkt_type; int num_of_fields; struct filt_field_param* params; int max_coalescing_delay; } ;
struct filt_field_param {scalar_t__ offset; void* operand_len; int operand_byte_stream; int operation; } ;
struct cfg80211_coalesce_rules {int n_patterns; scalar_t__ condition; TYPE_1__* patterns; int delay; } ;
typedef int byte_seq ;
struct TYPE_2__ {scalar_t__ pkt_offset; } ;


 int EOPNOTSUPP ;
 int ERROR ;
 int MWIFIEX_COALESCE_MAX_BYTESEQ ;
 scalar_t__ NL80211_COALESCE_CONDITION_MATCH ;
 int RECV_FILTER_MATCH_TYPE_EQ ;
 int RECV_FILTER_MATCH_TYPE_NE ;
 int memcpy (int ,void**,void*) ;
 int memset (void**,int ,int) ;
 int mwifiex_dbg (int ,int ,char*) ;
 void* mwifiex_get_coalesce_pkt_type (void**) ;
 int mwifiex_is_pattern_supported (TYPE_1__*,void**,int) ;

__attribute__((used)) static int
mwifiex_fill_coalesce_rule_info(struct mwifiex_private *priv,
    struct cfg80211_coalesce_rules *crule,
    struct mwifiex_coalesce_rule *mrule)
{
 u8 byte_seq[MWIFIEX_COALESCE_MAX_BYTESEQ + 1];
 struct filt_field_param *param;
 int i;

 mrule->max_coalescing_delay = crule->delay;

 param = mrule->params;

 for (i = 0; i < crule->n_patterns; i++) {
  memset(byte_seq, 0, sizeof(byte_seq));
  if (!mwifiex_is_pattern_supported(&crule->patterns[i],
        byte_seq,
      MWIFIEX_COALESCE_MAX_BYTESEQ)) {
   mwifiex_dbg(priv->adapter, ERROR,
        "Pattern not supported\n");
   return -EOPNOTSUPP;
  }

  if (!crule->patterns[i].pkt_offset) {
   u8 pkt_type;

   pkt_type = mwifiex_get_coalesce_pkt_type(byte_seq);
   if (pkt_type && mrule->pkt_type) {
    mwifiex_dbg(priv->adapter, ERROR,
         "Multiple packet types not allowed\n");
    return -EOPNOTSUPP;
   } else if (pkt_type) {
    mrule->pkt_type = pkt_type;
    continue;
   }
  }

  if (crule->condition == NL80211_COALESCE_CONDITION_MATCH)
   param->operation = RECV_FILTER_MATCH_TYPE_EQ;
  else
   param->operation = RECV_FILTER_MATCH_TYPE_NE;

  param->operand_len = byte_seq[MWIFIEX_COALESCE_MAX_BYTESEQ];
  memcpy(param->operand_byte_stream, byte_seq,
         param->operand_len);
  param->offset = crule->patterns[i].pkt_offset;
  param++;

  mrule->num_of_fields++;
 }

 if (!mrule->pkt_type) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Packet type can not be determined\n");
  return -EOPNOTSUPP;
 }

 return 0;
}
