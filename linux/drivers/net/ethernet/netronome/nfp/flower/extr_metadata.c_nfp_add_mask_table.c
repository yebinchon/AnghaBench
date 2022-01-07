
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nfp_mask_id_table {int mask_id; unsigned long hash_key; int ref_cnt; int link; } ;
struct nfp_flower_priv {int mask_table; int mask_id_seed; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int hash_add (int ,int *,unsigned long) ;
 unsigned long jhash (char*,int ,int ) ;
 struct nfp_mask_id_table* kmalloc (int,int ) ;
 scalar_t__ nfp_mask_alloc (struct nfp_app*,int*) ;
 int nfp_release_mask_id (struct nfp_app*,int) ;

__attribute__((used)) static int
nfp_add_mask_table(struct nfp_app *app, char *mask_data, u32 mask_len)
{
 struct nfp_flower_priv *priv = app->priv;
 struct nfp_mask_id_table *mask_entry;
 unsigned long hash_key;
 u8 mask_id;

 if (nfp_mask_alloc(app, &mask_id))
  return -ENOENT;

 mask_entry = kmalloc(sizeof(*mask_entry), GFP_KERNEL);
 if (!mask_entry) {
  nfp_release_mask_id(app, mask_id);
  return -ENOMEM;
 }

 INIT_HLIST_NODE(&mask_entry->link);
 mask_entry->mask_id = mask_id;
 hash_key = jhash(mask_data, mask_len, priv->mask_id_seed);
 mask_entry->hash_key = hash_key;
 mask_entry->ref_cnt = 1;
 hash_add(priv->mask_table, &mask_entry->link, hash_key);

 return mask_id;
}
