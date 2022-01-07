
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_handle {int num_rules; } ;


 int GFP_KERNEL ;
 struct mlx5_flow_handle* kzalloc (int ,int ) ;
 int rule ;
 int struct_size (struct mlx5_flow_handle*,int ,int) ;

__attribute__((used)) static struct mlx5_flow_handle *alloc_handle(int num_rules)
{
 struct mlx5_flow_handle *handle;

 handle = kzalloc(struct_size(handle, rule, num_rules), GFP_KERNEL);
 if (!handle)
  return ((void*)0);

 handle->num_rules = num_rules;

 return handle;
}
