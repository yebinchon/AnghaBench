
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nfp_app {int dummy; } ;


 int NFP_FL_META_FLAG_MANAGE_MASK ;
 int nfp_add_mask_table (struct nfp_app*,char*,int ) ;
 int nfp_find_in_mask_table (struct nfp_app*,char*,int ) ;

__attribute__((used)) static bool
nfp_check_mask_add(struct nfp_app *app, char *mask_data, u32 mask_len,
     u8 *meta_flags, u8 *mask_id)
{
 int id;

 id = nfp_find_in_mask_table(app, mask_data, mask_len);
 if (id < 0) {
  id = nfp_add_mask_table(app, mask_data, mask_len);
  if (id < 0)
   return 0;
  *meta_flags |= NFP_FL_META_FLAG_MANAGE_MASK;
 }
 *mask_id = id;

 return 1;
}
