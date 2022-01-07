
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_rule {int dummy; } ;
struct mlx5dr_matcher {int dummy; } ;
struct mlx5dr_match_parameters {int dummy; } ;
struct mlx5dr_action {int dummy; } ;



__attribute__((used)) static inline struct mlx5dr_rule *
mlx5dr_rule_create(struct mlx5dr_matcher *matcher,
     struct mlx5dr_match_parameters *value,
     size_t num_actions,
     struct mlx5dr_action *actions[]) { return ((void*)0); }
