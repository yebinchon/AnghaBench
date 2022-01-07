
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_rate {int stbc; int ldpc; int sgi; int bw; } ;
struct iwl_mvm {int dummy; } ;


 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,char const*,int ,int ,int ,int ,int ) ;
 int rs_pretty_rate (struct rs_rate const*) ;

__attribute__((used)) static inline void rs_dump_rate(struct iwl_mvm *mvm, const struct rs_rate *rate,
    const char *prefix)
{
 IWL_DEBUG_RATE(mvm,
         "%s: %s BW: %d SGI: %d LDPC: %d STBC: %d\n",
         prefix, rs_pretty_rate(rate), rate->bw,
         rate->sgi, rate->ldpc, rate->stbc);
}
