
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;
typedef enum mlx5dr_action_reformat_type { ____Placeholder_mlx5dr_action_reformat_type } mlx5dr_action_reformat_type ;



__attribute__((used)) static inline struct mlx5dr_action *
mlx5dr_action_create_packet_reformat(struct mlx5dr_domain *dmn,
         enum mlx5dr_action_reformat_type reformat_type,
         size_t data_sz,
         void *data) { return ((void*)0); }
