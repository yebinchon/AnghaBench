
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_pkt_reformat {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;



__attribute__((used)) static int mlx5_cmd_stub_packet_reformat_alloc(struct mlx5_flow_root_namespace *ns,
            int reformat_type,
            size_t size,
            void *reformat_data,
            enum mlx5_flow_namespace_type namespace,
            struct mlx5_pkt_reformat *pkt_reformat)
{
 return 0;
}
