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
struct lbs_private {int /*<<< orphan*/  dev; } ;
struct cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_DEEP_SLEEP ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_header*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  lbs_cmd_copyback ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct lbs_private *priv)
{
	int ret = -1;
	struct cmd_header cmd;

	FUNC3(&cmd, 0, sizeof(cmd));

	FUNC1("send DEEP_SLEEP command\n");
	ret = FUNC0(priv, CMD_802_11_DEEP_SLEEP, &cmd, sizeof(cmd),
			lbs_cmd_copyback, (unsigned long) &cmd);
	if (ret)
		FUNC4(priv->dev, "DEEP_SLEEP cmd failed\n");

	FUNC2(200);
	return ret;
}