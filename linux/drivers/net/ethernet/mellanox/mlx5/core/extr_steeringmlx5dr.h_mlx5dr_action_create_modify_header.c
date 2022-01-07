
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;
typedef int __be64 ;



__attribute__((used)) static inline struct mlx5dr_action *
mlx5dr_action_create_modify_header(struct mlx5dr_domain *domain,
       u32 flags,
       size_t actions_sz,
       __be64 actions[]) { return ((void*)0); }
