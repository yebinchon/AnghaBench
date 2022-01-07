
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx5dr_domain {int dummy; } ;
struct TYPE_2__ {int vlan_hdr; } ;
struct mlx5dr_action {TYPE_1__ push_vlan; } ;
typedef int __be32 ;


 scalar_t__ CVLAN_ETHERTYPE ;
 int DR_ACTION_TYP_PUSH_VLAN ;
 scalar_t__ SVLAN_ETHERTYPE ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 int ntohl (int ) ;

struct mlx5dr_action *mlx5dr_action_create_push_vlan(struct mlx5dr_domain *dmn,
           __be32 vlan_hdr)
{
 u32 vlan_hdr_h = ntohl(vlan_hdr);
 u16 ethertype = vlan_hdr_h >> 16;
 struct mlx5dr_action *action;

 if (ethertype != SVLAN_ETHERTYPE && ethertype != CVLAN_ETHERTYPE) {
  mlx5dr_dbg(dmn, "Invalid vlan ethertype\n");
  return ((void*)0);
 }

 action = dr_action_create_generic(DR_ACTION_TYP_PUSH_VLAN);
 if (!action)
  return ((void*)0);

 action->push_vlan.vlan_hdr = vlan_hdr_h;
 return action;
}
