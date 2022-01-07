
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_flow_context {int flags; scalar_t__ flow_tag; } ;
struct mlx5_flow_act {int action; } ;
struct TYPE_3__ {scalar_t__ flow_tag; } ;
struct TYPE_4__ {int action; } ;
struct fs_fte {TYPE_1__ flow_context; int node; TYPE_2__ action; } ;


 int EEXIST ;
 int FLOW_CONTEXT_HAS_TAG ;
 scalar_t__ check_conflicting_actions (int ,int ) ;
 int get_dev (int *) ;
 int mlx5_core_warn (int ,char*,...) ;

__attribute__((used)) static int check_conflicting_ftes(struct fs_fte *fte,
      const struct mlx5_flow_context *flow_context,
      const struct mlx5_flow_act *flow_act)
{
 if (check_conflicting_actions(flow_act->action, fte->action.action)) {
  mlx5_core_warn(get_dev(&fte->node),
          "Found two FTEs with conflicting actions\n");
  return -EEXIST;
 }

 if ((flow_context->flags & FLOW_CONTEXT_HAS_TAG) &&
     fte->flow_context.flow_tag != flow_context->flow_tag) {
  mlx5_core_warn(get_dev(&fte->node),
          "FTE flow tag %u already exists with different flow tag %u\n",
          fte->flow_context.flow_tag,
          flow_context->flow_tag);
  return -EEXIST;
 }

 return 0;
}
