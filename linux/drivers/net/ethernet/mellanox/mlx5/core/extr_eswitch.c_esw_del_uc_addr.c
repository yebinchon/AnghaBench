
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int * addr; } ;
struct vport_addr {scalar_t__ vport; int mpfs; int * flow_rule; TYPE_1__ node; } ;
struct mlx5_eswitch {scalar_t__ manager_vport; int dev; } ;


 int esw_warn (int ,char*,int *,scalar_t__,int) ;
 int mlx5_del_flow_rules (int *) ;
 int mlx5_mpfs_del_mac (int ,int *) ;

__attribute__((used)) static int esw_del_uc_addr(struct mlx5_eswitch *esw, struct vport_addr *vaddr)
{
 u8 *mac = vaddr->node.addr;
 u16 vport = vaddr->vport;
 int err = 0;




 if (!vaddr->mpfs || esw->manager_vport == vport)
  goto fdb_del;

 err = mlx5_mpfs_del_mac(esw->dev, mac);
 if (err)
  esw_warn(esw->dev,
    "Failed to del L2 table mac(%pM) for vport(%d), err(%d)\n",
    mac, vport, err);
 vaddr->mpfs = 0;

fdb_del:
 if (vaddr->flow_rule)
  mlx5_del_flow_rules(vaddr->flow_rule);
 vaddr->flow_rule = ((void*)0);

 return 0;
}
