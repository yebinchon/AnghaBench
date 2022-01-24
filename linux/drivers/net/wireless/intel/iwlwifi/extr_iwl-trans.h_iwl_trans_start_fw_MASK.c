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
struct iwl_trans {TYPE_1__* ops; int /*<<< orphan*/  status; int /*<<< orphan*/  rx_mpdu_cmd; } ;
struct fw_img {int dummy; } ;
struct TYPE_2__ {int (* start_fw ) (struct iwl_trans*,struct fw_img const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct iwl_trans*,struct fw_img const*,int) ; 

__attribute__((used)) static inline int FUNC4(struct iwl_trans *trans,
				     const struct fw_img *fw,
				     bool run_in_rfkill)
{
	FUNC2();

	FUNC0(!trans->rx_mpdu_cmd);

	FUNC1(STATUS_FW_ERROR, &trans->status);
	return trans->ops->start_fw(trans, fw, run_in_rfkill);
}