
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca_agent {int seq; } ;



__attribute__((used)) static void mlx5_hv_vhca_agent_seq_update(struct mlx5_hv_vhca_agent *agent)
{
 agent->seq++;
}
