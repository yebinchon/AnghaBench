
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* dmn; struct mlx5dr_action* data; int chunk; } ;
struct TYPE_10__ {TYPE_3__* dmn; int reformat_id; } ;
struct TYPE_8__ {TYPE_1__* tbl; int is_fw_tbl; } ;
struct mlx5dr_action {int action_type; TYPE_6__ rewrite; TYPE_4__ reformat; TYPE_2__ dest_tbl; int refcount; } ;
struct TYPE_11__ {int refcount; } ;
struct TYPE_9__ {int refcount; int mdev; } ;
struct TYPE_7__ {int refcount; } ;
 int EBUSY ;
 int kfree (struct mlx5dr_action*) ;
 int mlx5dr_cmd_destroy_reformat_ctx (int ,int ) ;
 int mlx5dr_icm_free_chunk (int ) ;
 int refcount_dec (int *) ;
 int refcount_read (int *) ;

int mlx5dr_action_destroy(struct mlx5dr_action *action)
{
 if (refcount_read(&action->refcount) > 1)
  return -EBUSY;

 switch (action->action_type) {
 case 133:
  if (!action->dest_tbl.is_fw_tbl)
   refcount_dec(&action->dest_tbl.tbl->refcount);
  break;
 case 129:
  refcount_dec(&action->reformat.dmn->refcount);
  break;
 case 128:
  mlx5dr_icm_free_chunk(action->rewrite.chunk);
  refcount_dec(&action->reformat.dmn->refcount);
  break;
 case 132:
 case 131:
  mlx5dr_cmd_destroy_reformat_ctx((action->reformat.dmn)->mdev,
      action->reformat.reformat_id);
  refcount_dec(&action->reformat.dmn->refcount);
  break;
 case 130:
  mlx5dr_icm_free_chunk(action->rewrite.chunk);
  kfree(action->rewrite.data);
  refcount_dec(&action->rewrite.dmn->refcount);
  break;
 default:
  break;
 }

 kfree(action);
 return 0;
}
