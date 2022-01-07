
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_fpga_ipsec_rule {int ctx; struct fs_fte* fte; } ;
struct mlx5_fpga_ipsec {int dummy; } ;
struct mlx5_fpga_device {struct mlx5_fpga_ipsec* ipsec; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_flow_group {int dummy; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct mailbox_mod {int dummy; } ;
struct TYPE_3__ {int esp_id; int action; } ;
struct fs_fte {TYPE_1__ action; } ;
struct TYPE_4__ {int (* create_fte ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_group*,struct fs_fte*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_DECRYPT ;
 int MLX5_FLOW_CONTEXT_ACTION_ENCRYPT ;
 int PTR_ERR (int ) ;
 int WARN_ON (int ) ;
 int _rule_delete (struct mlx5_fpga_ipsec*,struct mlx5_fpga_ipsec_rule*) ;
 int egress_to_fs_ft (int) ;
 int kfree (struct mlx5_fpga_ipsec_rule*) ;
 struct mlx5_fpga_ipsec_rule* kzalloc (int,int ) ;
 int mlx5_fpga_ipsec_delete_sa_ctx (int ) ;
 int mlx5_fpga_ipsec_fs_create_sa_ctx (struct mlx5_core_dev*,struct fs_fte*,int) ;
 TYPE_2__* mlx5_fs_cmd_get_default (int ) ;
 int modify_spec_mailbox (struct mlx5_core_dev*,struct fs_fte*,struct mailbox_mod*) ;
 int restore_spec_mailbox (struct fs_fte*,struct mailbox_mod*) ;
 int rule_insert (struct mlx5_fpga_ipsec*,struct mlx5_fpga_ipsec_rule*) ;

__attribute__((used)) static int fpga_ipsec_fs_create_fte(struct mlx5_flow_root_namespace *ns,
        struct mlx5_flow_table *ft,
        struct mlx5_flow_group *fg,
        struct fs_fte *fte,
        bool is_egress)
{
 int (*create_fte)(struct mlx5_flow_root_namespace *ns,
     struct mlx5_flow_table *ft,
     struct mlx5_flow_group *fg,
     struct fs_fte *fte) =
  mlx5_fs_cmd_get_default(egress_to_fs_ft(is_egress))->create_fte;
 struct mlx5_core_dev *dev = ns->dev;
 struct mlx5_fpga_device *fdev = dev->fpga;
 struct mlx5_fpga_ipsec *fipsec = fdev->ipsec;
 struct mlx5_fpga_ipsec_rule *rule;
 bool is_esp = fte->action.esp_id;
 struct mailbox_mod mbox_mod;
 int ret;

 if (!is_esp ||
     !(fte->action.action &
       (MLX5_FLOW_CONTEXT_ACTION_ENCRYPT |
        MLX5_FLOW_CONTEXT_ACTION_DECRYPT)))
  return create_fte(ns, ft, fg, fte);

 rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 if (!rule)
  return -ENOMEM;

 rule->ctx = mlx5_fpga_ipsec_fs_create_sa_ctx(dev, fte, is_egress);
 if (IS_ERR(rule->ctx)) {
  int err = PTR_ERR(rule->ctx);
  kfree(rule);
  return err;
 }

 rule->fte = fte;
 WARN_ON(rule_insert(fipsec, rule));

 modify_spec_mailbox(dev, fte, &mbox_mod);
 ret = create_fte(ns, ft, fg, fte);
 restore_spec_mailbox(fte, &mbox_mod);
 if (ret) {
  _rule_delete(fipsec, rule);
  mlx5_fpga_ipsec_delete_sa_ctx(rule->ctx);
  kfree(rule);
 }

 return ret;
}
