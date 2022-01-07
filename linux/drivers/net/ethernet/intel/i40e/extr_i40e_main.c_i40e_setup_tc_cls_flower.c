
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;



 int i40e_configure_clsflower (struct i40e_vsi*,struct flow_cls_offload*) ;
 int i40e_delete_clsflower (struct i40e_vsi*,struct flow_cls_offload*) ;

__attribute__((used)) static int i40e_setup_tc_cls_flower(struct i40e_netdev_priv *np,
        struct flow_cls_offload *cls_flower)
{
 struct i40e_vsi *vsi = np->vsi;

 switch (cls_flower->command) {
 case 129:
  return i40e_configure_clsflower(vsi, cls_flower);
 case 130:
  return i40e_delete_clsflower(vsi, cls_flower);
 case 128:
  return -EOPNOTSUPP;
 default:
  return -EOPNOTSUPP;
 }
}
