#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct semaphore {int dummy; } ;
struct mlx5_cmd {int log_sz; struct mlx5_cmd_stats* stats; int /*<<< orphan*/  checksum_disabled; struct semaphore sem; struct semaphore pages_sem; struct mlx5_cmd_work_ent** ent_arr; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_work_ent {int ret; int status; size_t op; int /*<<< orphan*/  done; TYPE_6__* in; TYPE_4__* out; int /*<<< orphan*/  uout; int /*<<< orphan*/  uout_size; void* context; int /*<<< orphan*/  (* callback ) (int,void*) ;scalar_t__ ts1; scalar_t__ ts2; int /*<<< orphan*/  idx; TYPE_2__* lay; scalar_t__ page_queue; int /*<<< orphan*/  cb_timeout_work; int /*<<< orphan*/  state; } ;
struct mlx5_cmd_stats {int /*<<< orphan*/  lock; int /*<<< orphan*/  n; int /*<<< orphan*/  sum; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  (* mlx5_cmd_cbk_t ) (int,void*) ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_3__ first; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__ first; } ;
struct TYPE_8__ {int status_own; int /*<<< orphan*/  out; } ;

/* Variables and functions */
 size_t FUNC0 (struct mlx5_cmd_stats*) ; 
 int /*<<< orphan*/  MLX5_CMD_ENT_STATE_PENDING_COMP ; 
 int MLX5_DRIVER_STATUS_ABORTED ; 
 int MLX5_TRIGGERED_CMD_COMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,struct mlx5_cmd_work_ent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_cmd_work_ent*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,TYPE_6__*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_core_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC19 (struct semaphore*) ; 
 int FUNC20 (struct mlx5_cmd_work_ent*) ; 

__attribute__((used)) static void FUNC21(struct mlx5_core_dev *dev, u64 vec, bool forced)
{
	struct mlx5_cmd *cmd = &dev->cmd;
	struct mlx5_cmd_work_ent *ent;
	mlx5_cmd_cbk_t callback;
	void *context;
	int err;
	int i;
	s64 ds;
	struct mlx5_cmd_stats *stats;
	unsigned long flags;
	unsigned long vector;

	/* there can be at most 32 command queues */
	vector = vec & 0xffffffff;
	for (i = 0; i < (1 << cmd->log_sz); i++) {
		if (FUNC18(i, &vector)) {
			struct semaphore *sem;

			ent = cmd->ent_arr[i];

			/* if we already completed the command, ignore it */
			if (!FUNC17(MLX5_CMD_ENT_STATE_PENDING_COMP,
						&ent->state)) {
				/* only real completion can free the cmd slot */
				if (!forced) {
					FUNC13(dev, "Command completion arrived after timeout (entry idx = %d).\n",
						      ent->idx);
					FUNC6(cmd, ent->idx);
					FUNC5(ent);
				}
				continue;
			}

			if (ent->callback)
				FUNC1(&ent->cb_timeout_work);
			if (ent->page_queue)
				sem = &cmd->pages_sem;
			else
				sem = &cmd->sem;
			ent->ts2 = FUNC8();
			FUNC9(ent->out->first.data, ent->lay->out, sizeof(ent->lay->out));
			FUNC4(dev, ent, 0);
			if (!ent->ret) {
				if (!cmd->checksum_disabled)
					ent->ret = FUNC20(ent);
				else
					ent->ret = 0;
				if (vec & MLX5_TRIGGERED_CMD_COMP)
					ent->status = MLX5_DRIVER_STATUS_ABORTED;
				else
					ent->status = ent->lay->status_own >> 1;

				FUNC12(dev, "command completed. ret 0x%x, delivery status %s(0x%x)\n",
					      ent->ret, FUNC3(ent->status), ent->status);
			}

			/* only real completion will free the entry slot */
			if (!forced)
				FUNC6(cmd, ent->idx);

			if (ent->callback) {
				ds = ent->ts2 - ent->ts1;
				if (ent->op < FUNC0(cmd->stats)) {
					stats = &cmd->stats[ent->op];
					FUNC15(&stats->lock, flags);
					stats->sum += ds;
					++stats->n;
					FUNC16(&stats->lock, flags);
				}

				callback = ent->callback;
				context = ent->context;
				err = ent->ret;
				if (!err) {
					err = FUNC11(ent->uout,
								 ent->out,
								 ent->uout_size);

					err = err ? err : FUNC10(dev,
									ent->in->first.data,
									ent->uout);
				}

				FUNC14(dev, ent->out);
				FUNC7(dev, ent->in);

				err = err ? err : ent->status;
				if (!forced)
					FUNC5(ent);
				callback(err, context);
			} else {
				FUNC2(&ent->done);
			}
			FUNC19(sem);
		}
	}
}