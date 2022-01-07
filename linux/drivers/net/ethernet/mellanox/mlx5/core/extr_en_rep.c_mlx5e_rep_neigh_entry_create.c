
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_neigh_hash_entry {int refcnt; int encap_list; int encap_list_lock; int neigh_update_work; int m_neigh; struct mlx5e_priv* priv; } ;
struct mlx5e_encap_entry {int m_neigh; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int kfree (struct mlx5e_neigh_hash_entry*) ;
 struct mlx5e_neigh_hash_entry* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mlx5e_rep_neigh_entry_insert (struct mlx5e_priv*,struct mlx5e_neigh_hash_entry*) ;
 int mlx5e_rep_neigh_update ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mlx5e_rep_neigh_entry_create(struct mlx5e_priv *priv,
     struct mlx5e_encap_entry *e,
     struct mlx5e_neigh_hash_entry **nhe)
{
 int err;

 *nhe = kzalloc(sizeof(**nhe), GFP_KERNEL);
 if (!*nhe)
  return -ENOMEM;

 (*nhe)->priv = priv;
 memcpy(&(*nhe)->m_neigh, &e->m_neigh, sizeof(e->m_neigh));
 INIT_WORK(&(*nhe)->neigh_update_work, mlx5e_rep_neigh_update);
 spin_lock_init(&(*nhe)->encap_list_lock);
 INIT_LIST_HEAD(&(*nhe)->encap_list);
 refcount_set(&(*nhe)->refcnt, 1);

 err = mlx5e_rep_neigh_entry_insert(priv, *nhe);
 if (err)
  goto out_free;
 return 0;

out_free:
 kfree(*nhe);
 return err;
}
