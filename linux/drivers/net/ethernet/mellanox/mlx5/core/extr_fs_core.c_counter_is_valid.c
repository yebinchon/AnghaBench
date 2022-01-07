
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_FLOW_CONTEXT_ACTION_DROP ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;

__attribute__((used)) static bool counter_is_valid(u32 action)
{
 return (action & (MLX5_FLOW_CONTEXT_ACTION_DROP |
     MLX5_FLOW_CONTEXT_ACTION_FWD_DEST));
}
