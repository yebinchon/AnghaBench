
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_pkt_reformat {int id; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int MLX5_CMD_OP_DEALLOC_PACKET_REFORMAT_CONTEXT ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int dealloc_packet_reformat_context_in ;
 int dealloc_packet_reformat_context_out ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int opcode ;
 int packet_reformat_id ;

__attribute__((used)) static void mlx5_cmd_packet_reformat_dealloc(struct mlx5_flow_root_namespace *ns,
          struct mlx5_pkt_reformat *pkt_reformat)
{
 u32 in[MLX5_ST_SZ_DW(dealloc_packet_reformat_context_in)];
 u32 out[MLX5_ST_SZ_DW(dealloc_packet_reformat_context_out)];
 struct mlx5_core_dev *dev = ns->dev;

 memset(in, 0, sizeof(in));
 MLX5_SET(dealloc_packet_reformat_context_in, in, opcode,
   MLX5_CMD_OP_DEALLOC_PACKET_REFORMAT_CONTEXT);
 MLX5_SET(dealloc_packet_reformat_context_in, in, packet_reformat_id,
   pkt_reformat->id);

 mlx5_cmd_exec(dev, in, sizeof(in), out, sizeof(out));
}
