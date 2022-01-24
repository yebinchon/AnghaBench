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
struct qlcnic_cmd_args {int dummy; } ;
struct qlcnic_back_channel {int /*<<< orphan*/  vf_async_work; int /*<<< orphan*/  bc_async_wq; } ;
struct qlcnic_async_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_cmd_args*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*) ; 
 struct qlcnic_async_cmd* FUNC2 (struct qlcnic_back_channel*,struct qlcnic_cmd_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qlcnic_back_channel *bc,
					    struct qlcnic_cmd_args *cmd)
{
	struct qlcnic_async_cmd *entry = NULL;

	entry = FUNC2(bc, cmd);
	if (!entry) {
		FUNC1(cmd);
		FUNC0(cmd);
		return;
	}

	FUNC3(bc->bc_async_wq, &bc->vf_async_work);
}