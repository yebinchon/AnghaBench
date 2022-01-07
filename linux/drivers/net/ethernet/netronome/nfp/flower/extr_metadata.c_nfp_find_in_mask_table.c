
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_mask_id_table {int mask_id; int ref_cnt; } ;
struct nfp_app {int dummy; } ;


 int ENOENT ;
 struct nfp_mask_id_table* nfp_search_mask_table (struct nfp_app*,char*,int ) ;

__attribute__((used)) static int
nfp_find_in_mask_table(struct nfp_app *app, char *mask_data, u32 mask_len)
{
 struct nfp_mask_id_table *mask_entry;

 mask_entry = nfp_search_mask_table(app, mask_data, mask_len);
 if (!mask_entry)
  return -ENOENT;

 mask_entry->ref_cnt++;


 return mask_entry->mask_id;
}
