
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_spec {scalar_t__ ip_dscp; scalar_t__ ip_ecn; scalar_t__ tcp_flags; scalar_t__ frag; scalar_t__ ip_protocol; } ;



__attribute__((used)) static bool dr_mask_is_l3_base_set(struct mlx5dr_match_spec *spec)
{
 return (spec->ip_protocol || spec->frag || spec->tcp_flags ||
  spec->ip_ecn || spec->ip_dscp);
}
