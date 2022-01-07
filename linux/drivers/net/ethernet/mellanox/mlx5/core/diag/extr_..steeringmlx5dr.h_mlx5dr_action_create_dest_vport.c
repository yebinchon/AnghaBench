
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;



__attribute__((used)) static inline struct mlx5dr_action *
mlx5dr_action_create_dest_vport(struct mlx5dr_domain *domain,
    u32 vport, u8 vhca_id_valid,
    u16 vhca_id) { return ((void*)0); }
