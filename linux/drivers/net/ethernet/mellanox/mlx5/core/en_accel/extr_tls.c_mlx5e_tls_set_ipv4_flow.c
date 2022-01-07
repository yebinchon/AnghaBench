
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_sock {int inet_rcv_saddr; int inet_daddr; } ;
struct TYPE_5__ {int ipv4; } ;
struct TYPE_8__ {TYPE_1__ ipv4_layout; } ;
struct TYPE_6__ {int ipv4; } ;
struct TYPE_7__ {TYPE_2__ ipv4_layout; } ;


 int MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int MLX5_SET (int ,void*,int ,int ) ;
 TYPE_4__ dst_ipv4_dst_ipv6 ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ipv4 ;
 int ipv4_layout ;
 int ipv6 ;
 int memcpy (int ,int *,int ) ;
 TYPE_3__ src_ipv4_src_ipv6 ;
 int tls_flow ;

__attribute__((used)) static void mlx5e_tls_set_ipv4_flow(void *flow, struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);

 MLX5_SET(tls_flow, flow, ipv6, 0);
 memcpy(MLX5_ADDR_OF(tls_flow, flow, dst_ipv4_dst_ipv6.ipv4_layout.ipv4),
        &inet->inet_daddr, MLX5_FLD_SZ_BYTES(ipv4_layout, ipv4));
 memcpy(MLX5_ADDR_OF(tls_flow, flow, src_ipv4_src_ipv6.ipv4_layout.ipv4),
        &inet->inet_rcv_saddr, MLX5_FLD_SZ_BYTES(ipv4_layout, ipv4));
}
