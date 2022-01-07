
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vhca_id; int num; } ;
struct mlx5_flow_destination {TYPE_1__ vport; } ;
struct mlx5_flow_act {int vlan; int action; } ;


 int jhash (void const*,int,int ) ;
 int jhash_1word (int ,int ) ;

__attribute__((used)) static u32
mlx5_eswitch_termtbl_hash(struct mlx5_flow_act *flow_act,
     struct mlx5_flow_destination *dest)
{
 u32 hash;

 hash = jhash_1word(flow_act->action, 0);
 hash = jhash((const void *)&flow_act->vlan,
       sizeof(flow_act->vlan), hash);
 hash = jhash((const void *)&dest->vport.num,
       sizeof(dest->vport.num), hash);
 hash = jhash((const void *)&dest->vport.vhca_id,
       sizeof(dest->vport.num), hash);
 return hash;
}
