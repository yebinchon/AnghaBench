
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_spec {int ttl_hoplimit; } ;



__attribute__((used)) static bool dr_mask_is_ttl_set(struct mlx5dr_match_spec *spec)
{
 return spec->ttl_hoplimit;
}
