
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5e_profile {int rq_groups; } ;
struct mlx5e_params {int num_channels; } ;



__attribute__((used)) static inline bool mlx5e_qid_validate(const struct mlx5e_profile *profile,
          struct mlx5e_params *params, u64 qid)
{
 return qid < params->num_channels * profile->rq_groups;
}
