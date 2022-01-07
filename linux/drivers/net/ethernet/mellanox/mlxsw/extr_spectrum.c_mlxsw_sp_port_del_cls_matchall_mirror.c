
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port_mall_mirror_tc_entry {int span_id; scalar_t__ ingress; } ;
struct mlxsw_sp_port {int dummy; } ;
typedef enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;


 int MLXSW_SP_SPAN_EGRESS ;
 int MLXSW_SP_SPAN_INGRESS ;
 int mlxsw_sp_span_mirror_del (struct mlxsw_sp_port*,int ,int,int) ;

__attribute__((used)) static void
mlxsw_sp_port_del_cls_matchall_mirror(struct mlxsw_sp_port *mlxsw_sp_port,
          struct mlxsw_sp_port_mall_mirror_tc_entry *mirror)
{
 enum mlxsw_sp_span_type span_type;

 span_type = mirror->ingress ?
   MLXSW_SP_SPAN_INGRESS : MLXSW_SP_SPAN_EGRESS;
 mlxsw_sp_span_mirror_del(mlxsw_sp_port, mirror->span_id,
     span_type, 1);
}
