
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_spec {scalar_t__ udp_dport; scalar_t__ udp_sport; scalar_t__ tcp_dport; scalar_t__ tcp_sport; } ;



__attribute__((used)) static bool dr_mask_is_tcp_udp_base_set(struct mlx5dr_match_spec *spec)
{
 return (spec->tcp_sport || spec->tcp_dport ||
  spec->udp_sport || spec->udp_dport);
}
