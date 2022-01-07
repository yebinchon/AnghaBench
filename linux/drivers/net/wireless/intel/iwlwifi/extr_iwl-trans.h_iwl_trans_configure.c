
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_config {int op_mode; } ;
struct iwl_trans {TYPE_1__* ops; int op_mode; } ;
struct TYPE_2__ {int (* configure ) (struct iwl_trans*,struct iwl_trans_config const*) ;} ;


 int WARN_ON (int ) ;
 int iwl_cmd_groups_verify_sorted (struct iwl_trans_config const*) ;
 int stub1 (struct iwl_trans*,struct iwl_trans_config const*) ;

__attribute__((used)) static inline void iwl_trans_configure(struct iwl_trans *trans,
           const struct iwl_trans_config *trans_cfg)
{
 trans->op_mode = trans_cfg->op_mode;

 trans->ops->configure(trans, trans_cfg);
 WARN_ON(iwl_cmd_groups_verify_sorted(trans_cfg));
}
