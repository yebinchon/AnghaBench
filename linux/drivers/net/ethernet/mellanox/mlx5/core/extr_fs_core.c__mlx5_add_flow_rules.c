
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int version; } ;
struct mlx5_flow_table {TYPE_1__ node; } ;
struct mlx5_flow_steering {int ftes_cache; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_handle {TYPE_1__ node; } ;
struct mlx5_flow_group {TYPE_1__ node; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int action; } ;
struct match_list_head {int list; } ;
struct fs_fte {TYPE_1__ node; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 struct mlx5_flow_handle* ERR_CAST (struct mlx5_flow_handle*) ;
 struct mlx5_flow_handle* ERR_PTR (int) ;
 int FS_LOCK_CHILD ;
 int FS_LOCK_GRANDPARENT ;
 int FS_LOCK_PARENT ;
 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 struct mlx5_flow_handle* add_rule_fg (struct mlx5_flow_handle*,struct mlx5_flow_spec const*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int,struct mlx5_flow_handle*) ;
 struct mlx5_flow_handle* alloc_auto_flow_group (struct mlx5_flow_table*,struct mlx5_flow_spec const*) ;
 struct mlx5_flow_handle* alloc_fte (struct mlx5_flow_table*,struct mlx5_flow_spec const*,struct mlx5_flow_act*) ;
 int atomic_read (int *) ;
 int build_match_list (struct match_list_head*,struct mlx5_flow_table*,struct mlx5_flow_spec const*) ;
 int check_valid_spec (struct mlx5_flow_spec const*) ;
 int create_auto_flow_group (struct mlx5_flow_table*,struct mlx5_flow_handle*) ;
 int dest_is_valid (struct mlx5_flow_destination*,int ,struct mlx5_flow_table*) ;
 int free_match_list (struct match_list_head*) ;
 struct mlx5_flow_steering* get_steering (TYPE_1__*) ;
 int insert_fte (struct mlx5_flow_handle*,struct mlx5_flow_handle*) ;
 int kmem_cache_free (int ,struct mlx5_flow_handle*) ;
 int nested_down_read_ref_node (TYPE_1__*,int ) ;
 int nested_down_write_ref_node (TYPE_1__*,int ) ;
 int tree_put_node (TYPE_1__*,int) ;
 struct mlx5_flow_handle* try_add_to_existing_fg (struct mlx5_flow_table*,int *,struct mlx5_flow_spec const*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int,int) ;
 int up_read_ref_node (TYPE_1__*) ;
 int up_write_ref_node (TYPE_1__*,int) ;

__attribute__((used)) static struct mlx5_flow_handle *
_mlx5_add_flow_rules(struct mlx5_flow_table *ft,
       const struct mlx5_flow_spec *spec,
       struct mlx5_flow_act *flow_act,
       struct mlx5_flow_destination *dest,
       int dest_num)

{
 struct mlx5_flow_steering *steering = get_steering(&ft->node);
 struct mlx5_flow_group *g;
 struct mlx5_flow_handle *rule;
 struct match_list_head match_head;
 bool take_write = 0;
 struct fs_fte *fte;
 int version;
 int err;
 int i;

 if (!check_valid_spec(spec))
  return ERR_PTR(-EINVAL);

 for (i = 0; i < dest_num; i++) {
  if (!dest_is_valid(&dest[i], flow_act->action, ft))
   return ERR_PTR(-EINVAL);
 }
 nested_down_read_ref_node(&ft->node, FS_LOCK_GRANDPARENT);
search_again_locked:
 version = atomic_read(&ft->node.version);


 err = build_match_list(&match_head, ft, spec);
 if (err) {
  if (take_write)
   up_write_ref_node(&ft->node, 0);
  else
   up_read_ref_node(&ft->node);
  return ERR_PTR(err);
 }

 if (!take_write)
  up_read_ref_node(&ft->node);

 rule = try_add_to_existing_fg(ft, &match_head.list, spec, flow_act, dest,
          dest_num, version);
 free_match_list(&match_head);
 if (!IS_ERR(rule) ||
     (PTR_ERR(rule) != -ENOENT && PTR_ERR(rule) != -EAGAIN)) {
  if (take_write)
   up_write_ref_node(&ft->node, 0);
  return rule;
 }

 if (!take_write) {
  nested_down_write_ref_node(&ft->node, FS_LOCK_GRANDPARENT);
  take_write = 1;
 }

 if (PTR_ERR(rule) == -EAGAIN ||
     version != atomic_read(&ft->node.version))
  goto search_again_locked;

 g = alloc_auto_flow_group(ft, spec);
 if (IS_ERR(g)) {
  rule = ERR_CAST(g);
  up_write_ref_node(&ft->node, 0);
  return rule;
 }

 nested_down_write_ref_node(&g->node, FS_LOCK_PARENT);
 up_write_ref_node(&ft->node, 0);

 err = create_auto_flow_group(ft, g);
 if (err)
  goto err_release_fg;

 fte = alloc_fte(ft, spec, flow_act);
 if (IS_ERR(fte)) {
  err = PTR_ERR(fte);
  goto err_release_fg;
 }

 err = insert_fte(g, fte);
 if (err) {
  kmem_cache_free(steering->ftes_cache, fte);
  goto err_release_fg;
 }

 nested_down_write_ref_node(&fte->node, FS_LOCK_CHILD);
 up_write_ref_node(&g->node, 0);
 rule = add_rule_fg(g, spec, flow_act, dest, dest_num, fte);
 up_write_ref_node(&fte->node, 0);
 tree_put_node(&fte->node, 0);
 tree_put_node(&g->node, 0);
 return rule;

err_release_fg:
 up_write_ref_node(&g->node, 0);
 tree_put_node(&g->node, 0);
 return ERR_PTR(err);
}
