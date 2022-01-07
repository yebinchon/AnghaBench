
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_ra_list_tbl {scalar_t__ tdls_link; int ra; } ;
struct mwifiex_private {TYPE_1__* aggr_prio_tbl; } ;
struct TYPE_2__ {scalar_t__ ampdu_ap; } ;


 scalar_t__ BA_STREAM_NOT_ALLOWED ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 int mwifiex_is_station_ampdu_allowed (struct mwifiex_private*,struct mwifiex_ra_list_tbl*,int) ;

__attribute__((used)) static inline u8
mwifiex_is_ampdu_allowed(struct mwifiex_private *priv,
    struct mwifiex_ra_list_tbl *ptr, int tid)
{
 if (is_broadcast_ether_addr(ptr->ra))
  return 0;
 if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_UAP) {
  return mwifiex_is_station_ampdu_allowed(priv, ptr, tid);
 } else {
  if (ptr->tdls_link)
   return mwifiex_is_station_ampdu_allowed(priv, ptr, tid);

  return (priv->aggr_prio_tbl[tid].ampdu_ap !=
   BA_STREAM_NOT_ALLOWED) ? 1 : 0;
 }
}
