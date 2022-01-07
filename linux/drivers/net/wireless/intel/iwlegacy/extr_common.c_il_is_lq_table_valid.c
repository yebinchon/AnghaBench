
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int channel; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct il_priv {TYPE_2__ active; TYPE_1__ ht; } ;
struct il_link_quality_cmd {TYPE_3__* rs_table; } ;
struct TYPE_6__ {int rate_n_flags; } ;


 int D_INFO (char*,int) ;
 int LINK_QUAL_MAX_RETRY_NUM ;
 int RATE_MCS_HT_MSK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool
il_is_lq_table_valid(struct il_priv *il, struct il_link_quality_cmd *lq)
{
 int i;

 if (il->ht.enabled)
  return 1;

 D_INFO("Channel %u is not an HT channel\n", il->active.channel);
 for (i = 0; i < LINK_QUAL_MAX_RETRY_NUM; i++) {
  if (le32_to_cpu(lq->rs_table[i].rate_n_flags) & RATE_MCS_HT_MSK) {
   D_INFO("idx %d of LQ expects HT channel\n", i);
   return 0;
  }
 }
 return 1;
}
