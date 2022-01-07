
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_rule {unsigned long cookie; int rulei; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp_acl_profile_ops {scalar_t__ rule_priv_size; } ;
struct mlxsw_sp {int acl; } ;
struct mlxsw_afa_block {int dummy; } ;


 int ENOMEM ;
 struct mlxsw_sp_acl_rule* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kfree (struct mlxsw_sp_acl_rule*) ;
 struct mlxsw_sp_acl_rule* kzalloc (scalar_t__,int ) ;
 int mlxsw_sp_acl_rulei_create (int ,struct mlxsw_afa_block*) ;
 int mlxsw_sp_acl_ruleset_ref_dec (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ;
 int mlxsw_sp_acl_ruleset_ref_inc (struct mlxsw_sp_acl_ruleset*) ;

struct mlxsw_sp_acl_rule *
mlxsw_sp_acl_rule_create(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_acl_ruleset *ruleset,
    unsigned long cookie,
    struct mlxsw_afa_block *afa_block,
    struct netlink_ext_ack *extack)
{
 const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
 struct mlxsw_sp_acl_rule *rule;
 int err;

 mlxsw_sp_acl_ruleset_ref_inc(ruleset);
 rule = kzalloc(sizeof(*rule) + ops->rule_priv_size,
         GFP_KERNEL);
 if (!rule) {
  err = -ENOMEM;
  goto err_alloc;
 }
 rule->cookie = cookie;
 rule->ruleset = ruleset;

 rule->rulei = mlxsw_sp_acl_rulei_create(mlxsw_sp->acl, afa_block);
 if (IS_ERR(rule->rulei)) {
  err = PTR_ERR(rule->rulei);
  goto err_rulei_create;
 }

 return rule;

err_rulei_create:
 kfree(rule);
err_alloc:
 mlxsw_sp_acl_ruleset_ref_dec(mlxsw_sp, ruleset);
 return ERR_PTR(err);
}
