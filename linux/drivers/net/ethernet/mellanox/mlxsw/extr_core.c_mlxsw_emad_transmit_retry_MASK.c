#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlxsw_reg_trans {scalar_t__ retries; int /*<<< orphan*/  core; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MLXSW_EMAD_MAX_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_reg_trans*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mlxsw_reg_trans*) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_core *mlxsw_core,
				      struct mlxsw_reg_trans *trans)
{
	int err;

	if (trans->retries < MLXSW_EMAD_MAX_RETRY) {
		trans->retries++;
		err = FUNC1(trans->core, trans);
		if (err == 0)
			return;
	} else {
		err = -EIO;
	}
	FUNC0(trans, err);
}