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
struct iwl_mvm {int dummy; } ;
struct iwl_led_cmd {int /*<<< orphan*/  status; } ;
struct iwl_host_cmd {int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  LEDS_CMD ; 
 int /*<<< orphan*/  LONG_GROUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_mvm*,struct iwl_host_cmd*) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm, bool on)
{
	struct iwl_led_cmd led_cmd = {
		.status = FUNC2(on),
	};
	struct iwl_host_cmd cmd = {
		.id = FUNC1(LONG_GROUP, LEDS_CMD),
		.len = sizeof(led_cmd), 
		.data = &led_cmd, 
		.flags = CMD_ASYNC,
	};
	int err;

	if (!FUNC3(mvm))
		return;

	err = FUNC4(mvm, &cmd);

	if (err)
		FUNC0(mvm, "LED command failed: %d\n", err);
}