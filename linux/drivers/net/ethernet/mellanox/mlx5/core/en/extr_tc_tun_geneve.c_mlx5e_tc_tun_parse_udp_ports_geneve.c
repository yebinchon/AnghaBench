
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5_flow_spec {int dummy; } ;
struct flow_cls_offload {int dummy; } ;


 int mlx5e_tc_tun_check_udp_dport_geneve (struct mlx5e_priv*,struct flow_cls_offload*) ;
 int mlx5e_tc_tun_parse_udp_ports (struct mlx5e_priv*,struct mlx5_flow_spec*,struct flow_cls_offload*,void*,void*) ;

__attribute__((used)) static int mlx5e_tc_tun_parse_udp_ports_geneve(struct mlx5e_priv *priv,
            struct mlx5_flow_spec *spec,
            struct flow_cls_offload *f,
            void *headers_c,
            void *headers_v)
{
 int err;

 err = mlx5e_tc_tun_parse_udp_ports(priv, spec, f, headers_c, headers_v);
 if (err)
  return err;

 return mlx5e_tc_tun_check_udp_dport_geneve(priv, f);
}
