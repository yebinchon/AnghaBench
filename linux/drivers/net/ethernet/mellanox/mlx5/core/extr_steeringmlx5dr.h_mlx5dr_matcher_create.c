
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5dr_table {int dummy; } ;
struct mlx5dr_matcher {int dummy; } ;
struct mlx5dr_match_parameters {int dummy; } ;



__attribute__((used)) static inline struct mlx5dr_matcher *
mlx5dr_matcher_create(struct mlx5dr_table *table,
        u16 priority,
        u8 match_criteria_enable,
        struct mlx5dr_match_parameters *mask) { return ((void*)0); }
