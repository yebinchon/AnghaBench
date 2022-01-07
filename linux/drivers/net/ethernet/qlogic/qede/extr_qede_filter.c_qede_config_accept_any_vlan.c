
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {int accept_any_vlan; int cdev; TYPE_1__* ops; } ;
struct qed_update_vport_params {int accept_any_vlan; int update_accept_any_vlan_flg; scalar_t__ vport_id; } ;
struct TYPE_2__ {int (* vport_update ) (int ,struct qed_update_vport_params*) ;} ;


 int DP_ERR (struct qede_dev*,char*,char*) ;
 int DP_INFO (struct qede_dev*,char*,char*) ;
 int ENOMEM ;
 int stub1 (int ,struct qed_update_vport_params*) ;
 int vfree (struct qed_update_vport_params*) ;
 struct qed_update_vport_params* vzalloc (int) ;

__attribute__((used)) static int qede_config_accept_any_vlan(struct qede_dev *edev, bool action)
{
 struct qed_update_vport_params *params;
 int rc;


 if (edev->accept_any_vlan == action)
  return 0;

 params = vzalloc(sizeof(*params));
 if (!params)
  return -ENOMEM;

 params->vport_id = 0;
 params->accept_any_vlan = action;
 params->update_accept_any_vlan_flg = 1;

 rc = edev->ops->vport_update(edev->cdev, params);
 if (rc) {
  DP_ERR(edev, "Failed to %s accept-any-vlan\n",
         action ? "enable" : "disable");
 } else {
  DP_INFO(edev, "%s accept-any-vlan\n",
   action ? "enabled" : "disabled");
  edev->accept_any_vlan = action;
 }

 vfree(params);
 return 0;
}
