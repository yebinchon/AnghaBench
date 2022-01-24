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
struct mlx5e_txqsq {int sqn; int ch_ix; int txq_ix; int cc; int pc; int /*<<< orphan*/  cq; int /*<<< orphan*/  txq; TYPE_1__* channel; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct devlink_fmsg {int dummy; } ;
struct TYPE_2__ {struct mlx5e_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (struct devlink_fmsg*,char*,int) ; 
 int FUNC1 (struct devlink_fmsg*) ; 
 int FUNC2 (struct devlink_fmsg*) ; 
 int FUNC3 (struct devlink_fmsg*,char*,int) ; 
 int FUNC4 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct devlink_fmsg*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct devlink_fmsg *fmsg,
					struct mlx5e_txqsq *sq, int tc)
{
	struct mlx5e_priv *priv = sq->channel->priv;
	bool stopped = FUNC7(sq->txq);
	u8 state;
	int err;

	err = FUNC5(priv->mdev, sq->sqn, &state);
	if (err)
		return err;

	err = FUNC2(fmsg);
	if (err)
		return err;

	err = FUNC3(fmsg, "channel ix", sq->ch_ix);
	if (err)
		return err;

	err = FUNC3(fmsg, "tc", tc);
	if (err)
		return err;

	err = FUNC3(fmsg, "txq ix", sq->txq_ix);
	if (err)
		return err;

	err = FUNC3(fmsg, "sqn", sq->sqn);
	if (err)
		return err;

	err = FUNC4(fmsg, "HW state", state);
	if (err)
		return err;

	err = FUNC0(fmsg, "stopped", stopped);
	if (err)
		return err;

	err = FUNC3(fmsg, "cc", sq->cc);
	if (err)
		return err;

	err = FUNC3(fmsg, "pc", sq->pc);
	if (err)
		return err;

	err = FUNC6(&sq->cq, fmsg);
	if (err)
		return err;

	err = FUNC1(fmsg);
	if (err)
		return err;

	return 0;
}