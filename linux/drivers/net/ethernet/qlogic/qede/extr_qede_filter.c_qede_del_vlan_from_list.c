
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_vlan {scalar_t__ vid; int list; scalar_t__ configured; } ;
struct qede_dev {int non_configured_vlans; int configured_vlans; } ;


 int kfree (struct qede_vlan*) ;
 int list_del (int *) ;

__attribute__((used)) static void qede_del_vlan_from_list(struct qede_dev *edev,
        struct qede_vlan *vlan)
{

 if (vlan->vid != 0) {
  if (vlan->configured)
   edev->configured_vlans--;
  else
   edev->non_configured_vlans--;
 }

 list_del(&vlan->list);
 kfree(vlan);
}
