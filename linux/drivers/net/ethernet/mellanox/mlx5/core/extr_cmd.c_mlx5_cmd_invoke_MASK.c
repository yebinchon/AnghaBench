#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct mlx5_cmd {struct mlx5_cmd_stats* stats; int /*<<< orphan*/  wq; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_work_ent {int polling; int /*<<< orphan*/  status; scalar_t__ ts1; scalar_t__ ts2; int /*<<< orphan*/  work; int /*<<< orphan*/  cb_timeout_work; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;
struct mlx5_cmd_stats {int /*<<< orphan*/  lock; int /*<<< orphan*/  n; int /*<<< orphan*/  sum; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct mlx5_cmd_msg {TYPE_1__ first; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  mlx5_cmd_cbk_t ;

/* Variables and functions */
 size_t FUNC0 (struct mlx5_cmd_stats*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC3 (struct mlx5_cmd_work_ent*) ; 
 int MLX5_CMD_TIME ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_cmd_work_ent*) ; 
 struct mlx5_cmd_work_ent* FUNC6 (struct mlx5_cmd*,struct mlx5_cmd_msg*,struct mlx5_cmd_msg*,void*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  cb_timeout_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_cmd_work_ent*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbox_in ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct mlx5_core_dev*,struct mlx5_cmd_work_ent*) ; 

__attribute__((used)) static int FUNC17(struct mlx5_core_dev *dev, struct mlx5_cmd_msg *in,
			   struct mlx5_cmd_msg *out, void *uout, int uout_size,
			   mlx5_cmd_cbk_t callback,
			   void *context, int page_queue, u8 *status,
			   u8 token, bool force_polling)
{
	struct mlx5_cmd *cmd = &dev->cmd;
	struct mlx5_cmd_work_ent *ent;
	struct mlx5_cmd_stats *stats;
	int err = 0;
	s64 ds;
	u16 op;

	if (callback && page_queue)
		return -EINVAL;

	ent = FUNC6(cmd, in, out, uout, uout_size, callback, context,
			page_queue);
	if (FUNC3(ent))
		return FUNC5(ent);

	ent->token = token;
	ent->polling = force_polling;

	if (!callback)
		FUNC9(&ent->done);

	FUNC1(&ent->cb_timeout_work, cb_timeout_handler);
	FUNC2(&ent->work, cmd_work_handler);
	if (page_queue) {
		FUNC7(&ent->work);
	} else if (!FUNC13(cmd->wq, &ent->work)) {
		FUNC12(dev, "failed to queue work\n");
		err = -ENOMEM;
		goto out_free;
	}

	if (callback)
		goto out;

	err = FUNC16(dev, ent);
	if (err == -ETIMEDOUT)
		goto out;

	ds = ent->ts2 - ent->ts1;
	op = FUNC4(mbox_in, in->first.data, opcode);
	if (op < FUNC0(cmd->stats)) {
		stats = &cmd->stats[op];
		FUNC14(&stats->lock);
		stats->sum += ds;
		++stats->n;
		FUNC15(&stats->lock);
	}
	FUNC11(dev, 1 << MLX5_CMD_TIME,
			   "fw exec time for %s is %lld nsec\n",
			   FUNC10(op), ds);
	*status = ent->status;

out_free:
	FUNC8(ent);
out:
	return err;
}