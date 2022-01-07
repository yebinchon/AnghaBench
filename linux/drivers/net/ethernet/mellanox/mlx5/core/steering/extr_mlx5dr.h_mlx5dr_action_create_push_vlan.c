
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;
typedef int __be32 ;



__attribute__((used)) static inline struct mlx5dr_action *
mlx5dr_action_create_push_vlan(struct mlx5dr_domain *domain,
          __be32 vlan_hdr) { return ((void*)0); }
