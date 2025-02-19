
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; scalar_t__ vhca_id; } ;
struct mlx5_flow_destination {TYPE_1__ vport; } ;
struct mlx5_flow_act {scalar_t__ action; int vlan; } ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
mlx5_eswitch_termtbl_cmp(struct mlx5_flow_act *flow_act1,
    struct mlx5_flow_destination *dest1,
    struct mlx5_flow_act *flow_act2,
    struct mlx5_flow_destination *dest2)
{
 return flow_act1->action != flow_act2->action ||
        dest1->vport.num != dest2->vport.num ||
        dest1->vport.vhca_id != dest2->vport.vhca_id ||
        memcmp(&flow_act1->vlan, &flow_act2->vlan,
        sizeof(flow_act1->vlan));
}
