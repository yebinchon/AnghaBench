
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int params_initialized; } ;
struct dbg_tools_data {TYPE_1__ grc; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;


 int qed_dbg_grc_set_params_default (struct qed_hwfn*) ;

__attribute__((used)) static void qed_dbg_grc_init_params(struct qed_hwfn *p_hwfn)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 if (!dev_data->grc.params_initialized) {
  qed_dbg_grc_set_params_default(p_hwfn);
  dev_data->grc.params_initialized = 1;
 }
}
