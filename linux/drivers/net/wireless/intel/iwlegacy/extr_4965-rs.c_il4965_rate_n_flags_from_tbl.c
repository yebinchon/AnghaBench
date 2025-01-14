
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct il_scale_tbl_info {int ant_type; scalar_t__ is_SGI; int lq_type; scalar_t__ is_dup; scalar_t__ is_ht40; } ;
struct il_priv {int dummy; } ;
struct TYPE_2__ {int plcp; int plcp_siso; int plcp_mimo2; } ;


 int IL_ERR (char*,...) ;
 int IL_FIRST_CCK_RATE ;
 int IL_LAST_CCK_RATE ;
 int IL_LAST_OFDM_RATE ;
 int RATE_MCS_ANT_ABC_MSK ;
 int RATE_MCS_ANT_POS ;
 int RATE_MCS_CCK_MSK ;
 int RATE_MCS_DUP_MSK ;
 int RATE_MCS_GF_MSK ;
 int RATE_MCS_HT40_MSK ;
 int RATE_MCS_HT_MSK ;
 int RATE_MCS_SGI_MSK ;
 TYPE_1__* il_rates ;
 scalar_t__ is_Ht (int ) ;
 scalar_t__ is_legacy (int ) ;
 scalar_t__ is_siso (int ) ;

__attribute__((used)) static u32
il4965_rate_n_flags_from_tbl(struct il_priv *il, struct il_scale_tbl_info *tbl,
        int idx, u8 use_green)
{
 u32 rate_n_flags = 0;

 if (is_legacy(tbl->lq_type)) {
  rate_n_flags = il_rates[idx].plcp;
  if (idx >= IL_FIRST_CCK_RATE && idx <= IL_LAST_CCK_RATE)
   rate_n_flags |= RATE_MCS_CCK_MSK;

 } else if (is_Ht(tbl->lq_type)) {
  if (idx > IL_LAST_OFDM_RATE) {
   IL_ERR("Invalid HT rate idx %d\n", idx);
   idx = IL_LAST_OFDM_RATE;
  }
  rate_n_flags = RATE_MCS_HT_MSK;

  if (is_siso(tbl->lq_type))
   rate_n_flags |= il_rates[idx].plcp_siso;
  else
   rate_n_flags |= il_rates[idx].plcp_mimo2;
 } else {
  IL_ERR("Invalid tbl->lq_type %d\n", tbl->lq_type);
 }

 rate_n_flags |=
     ((tbl->ant_type << RATE_MCS_ANT_POS) & RATE_MCS_ANT_ABC_MSK);

 if (is_Ht(tbl->lq_type)) {
  if (tbl->is_ht40) {
   if (tbl->is_dup)
    rate_n_flags |= RATE_MCS_DUP_MSK;
   else
    rate_n_flags |= RATE_MCS_HT40_MSK;
  }
  if (tbl->is_SGI)
   rate_n_flags |= RATE_MCS_SGI_MSK;

  if (use_green) {
   rate_n_flags |= RATE_MCS_GF_MSK;
   if (is_siso(tbl->lq_type) && tbl->is_SGI) {
    rate_n_flags &= ~RATE_MCS_SGI_MSK;
    IL_ERR("GF was set with SGI:SISO\n");
   }
  }
 }
 return rate_n_flags;
}
