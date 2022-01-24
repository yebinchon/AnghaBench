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
struct ipw2100_priv {int status; int /*<<< orphan*/  adapter_mutex; int /*<<< orphan*/  hang_check; scalar_t__ stop_hang_check; TYPE_1__* net_dev; } ;
struct host_command {int /*<<< orphan*/  host_command_length; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_COMPLETE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  IPW_HW_STATE_ENABLED ; 
 int STATUS_ENABLED ; 
 int FUNC2 (struct ipw2100_priv*,struct host_command*) ; 
 int FUNC3 (struct ipw2100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct ipw2100_priv *priv)
{
	struct host_command cmd = {
		.host_command = HOST_COMPLETE,
		.host_command_sequence = 0,
		.host_command_length = 0
	};
	int err = 0;

	FUNC0("HOST_COMPLETE\n");

	if (priv->status & STATUS_ENABLED)
		return 0;

	FUNC4(&priv->adapter_mutex);

	if (FUNC6(priv)) {
		FUNC0("Command aborted due to RF kill active.\n");
		goto fail_up;
	}

	err = FUNC2(priv, &cmd);
	if (err) {
		FUNC1("Failed to send HOST_COMPLETE command\n");
		goto fail_up;
	}

	err = FUNC3(priv, IPW_HW_STATE_ENABLED);
	if (err) {
		FUNC1("%s: card not responding to init command.\n",
			       priv->net_dev->name);
		goto fail_up;
	}

	if (priv->stop_hang_check) {
		priv->stop_hang_check = 0;
		FUNC7(&priv->hang_check, HZ / 2);
	}

      fail_up:
	FUNC5(&priv->adapter_mutex);
	return err;
}