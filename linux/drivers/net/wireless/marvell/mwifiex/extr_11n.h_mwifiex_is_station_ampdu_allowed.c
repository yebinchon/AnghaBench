
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_sta_node {scalar_t__* ampdu_sta; } ;
struct mwifiex_ra_list_tbl {int ra; } ;
struct mwifiex_private {int dummy; } ;


 scalar_t__ BA_STREAM_NOT_ALLOWED ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u8
mwifiex_is_station_ampdu_allowed(struct mwifiex_private *priv,
     struct mwifiex_ra_list_tbl *ptr, int tid)
{
 struct mwifiex_sta_node *node = mwifiex_get_sta_entry(priv, ptr->ra);

 if (unlikely(!node))
  return 0;

 return (node->ampdu_sta[tid] != BA_STREAM_NOT_ALLOWED) ? 1 : 0;
}
