
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_spec {scalar_t__ src_ip_31_0; scalar_t__ src_ip_63_32; scalar_t__ src_ip_95_64; scalar_t__ src_ip_127_96; } ;



__attribute__((used)) static bool dr_mask_is_src_addr_set(struct mlx5dr_match_spec *spec)
{
 return (spec->src_ip_127_96 || spec->src_ip_95_64 ||
  spec->src_ip_63_32 || spec->src_ip_31_0);
}
