
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vport_rx_group; } ;
struct mlx5_eswitch {TYPE_1__ offloads; } ;


 int mlx5_destroy_flow_group (int ) ;

__attribute__((used)) static void esw_destroy_vport_rx_group(struct mlx5_eswitch *esw)
{
 mlx5_destroy_flow_group(esw->offloads.vport_rx_group);
}
