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
struct carl9170_cmd {int dummy; } ;
struct ar9170 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_CMD_REBOOT_ASYNC ; 
 int ENOMEM ; 
 int FUNC0 (struct ar9170*,struct carl9170_cmd*,int) ; 
 struct carl9170_cmd* FUNC1 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct ar9170 *ar)
{
	struct carl9170_cmd *cmd;
	int err;

	cmd = FUNC1(ar, CARL9170_CMD_REBOOT_ASYNC, 0);
	if (!cmd)
		return -ENOMEM;

	err = FUNC0(ar, cmd, true);
	return err;
}