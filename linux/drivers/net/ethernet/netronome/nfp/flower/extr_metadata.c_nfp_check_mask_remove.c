
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nfp_mask_id_table {int link; int ref_cnt; int mask_id; } ;
struct nfp_app {int dummy; } ;


 int NFP_FL_META_FLAG_MANAGE_MASK ;
 int hash_del (int *) ;
 int kfree (struct nfp_mask_id_table*) ;
 int nfp_release_mask_id (struct nfp_app*,int ) ;
 struct nfp_mask_id_table* nfp_search_mask_table (struct nfp_app*,char*,int ) ;

__attribute__((used)) static bool
nfp_check_mask_remove(struct nfp_app *app, char *mask_data, u32 mask_len,
        u8 *meta_flags, u8 *mask_id)
{
 struct nfp_mask_id_table *mask_entry;

 mask_entry = nfp_search_mask_table(app, mask_data, mask_len);
 if (!mask_entry)
  return 0;

 *mask_id = mask_entry->mask_id;
 mask_entry->ref_cnt--;
 if (!mask_entry->ref_cnt) {
  hash_del(&mask_entry->link);
  nfp_release_mask_id(app, *mask_id);
  kfree(mask_entry);
  if (meta_flags)
   *meta_flags |= NFP_FL_META_FLAG_MANAGE_MASK;
 }

 return 1;
}
