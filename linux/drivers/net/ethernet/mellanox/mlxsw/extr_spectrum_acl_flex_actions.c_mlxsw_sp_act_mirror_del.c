
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; } ;
typedef enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;


 int MLXSW_SP_SPAN_EGRESS ;
 int MLXSW_SP_SPAN_INGRESS ;
 int mlxsw_sp_span_mirror_del (struct mlxsw_sp_port*,int,int,int) ;

__attribute__((used)) static void
mlxsw_sp_act_mirror_del(void *priv, u8 local_in_port, int span_id, bool ingress)
{
 struct mlxsw_sp *mlxsw_sp = priv;
 struct mlxsw_sp_port *in_port;
 enum mlxsw_sp_span_type type;

 type = ingress ? MLXSW_SP_SPAN_INGRESS : MLXSW_SP_SPAN_EGRESS;
 in_port = mlxsw_sp->ports[local_in_port];

 mlxsw_sp_span_mirror_del(in_port, span_id, type, 0);
}
