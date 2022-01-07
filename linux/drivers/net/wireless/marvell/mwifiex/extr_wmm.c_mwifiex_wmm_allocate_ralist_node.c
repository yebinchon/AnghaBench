
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_ra_list_tbl {scalar_t__ total_pkt_count; int ra; int skb_head; int list; } ;
struct mwifiex_adapter {int dummy; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int INFO ;
 int INIT_LIST_HEAD (int *) ;
 struct mwifiex_ra_list_tbl* kzalloc (int,int ) ;
 int memcpy (int ,int const*,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,struct mwifiex_ra_list_tbl*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct mwifiex_ra_list_tbl *
mwifiex_wmm_allocate_ralist_node(struct mwifiex_adapter *adapter, const u8 *ra)
{
 struct mwifiex_ra_list_tbl *ra_list;

 ra_list = kzalloc(sizeof(struct mwifiex_ra_list_tbl), GFP_ATOMIC);
 if (!ra_list)
  return ((void*)0);

 INIT_LIST_HEAD(&ra_list->list);
 skb_queue_head_init(&ra_list->skb_head);

 memcpy(ra_list->ra, ra, ETH_ALEN);

 ra_list->total_pkt_count = 0;

 mwifiex_dbg(adapter, INFO, "info: allocated ra_list %p\n", ra_list);

 return ra_list;
}
