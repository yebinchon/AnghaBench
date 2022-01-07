
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_modify_hdr {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;



__attribute__((used)) static int mlx5_cmd_stub_modify_header_alloc(struct mlx5_flow_root_namespace *ns,
          u8 namespace, u8 num_actions,
          void *modify_actions,
          struct mlx5_modify_hdr *modify_hdr)
{
 return 0;
}
