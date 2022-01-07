
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_ra_list_tbl {int dummy; } ;
struct mwifiex_private {int dummy; } ;


 int mwifiex_ralist_add (struct mwifiex_private*,int const*) ;
 struct mwifiex_ra_list_tbl* mwifiex_wmm_get_ralist_node (struct mwifiex_private*,int ,int const*) ;

struct mwifiex_ra_list_tbl *
mwifiex_wmm_get_queue_raptr(struct mwifiex_private *priv, u8 tid,
       const u8 *ra_addr)
{
 struct mwifiex_ra_list_tbl *ra_list;

 ra_list = mwifiex_wmm_get_ralist_node(priv, tid, ra_addr);
 if (ra_list)
  return ra_list;
 mwifiex_ralist_add(priv, ra_addr);

 return mwifiex_wmm_get_ralist_node(priv, tid, ra_addr);
}
