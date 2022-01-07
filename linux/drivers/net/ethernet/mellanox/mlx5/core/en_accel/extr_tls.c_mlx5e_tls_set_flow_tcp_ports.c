
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_sock {int inet_dport; int inet_sport; } ;


 int MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int dst_port ;
 struct inet_sock* inet_sk (struct sock*) ;
 int memcpy (int ,int *,int ) ;
 int src_port ;
 int tls_flow ;

__attribute__((used)) static void mlx5e_tls_set_flow_tcp_ports(void *flow, struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);

 memcpy(MLX5_ADDR_OF(tls_flow, flow, src_port), &inet->inet_sport,
        MLX5_FLD_SZ_BYTES(tls_flow, src_port));
 memcpy(MLX5_ADDR_OF(tls_flow, flow, dst_port), &inet->inet_dport,
        MLX5_FLD_SZ_BYTES(tls_flow, dst_port));
}
