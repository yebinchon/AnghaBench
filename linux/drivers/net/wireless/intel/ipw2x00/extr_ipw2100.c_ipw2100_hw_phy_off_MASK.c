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
typedef  int u32 ;
struct ipw2100_priv {int /*<<< orphan*/  net_dev; } ;
struct host_command {int /*<<< orphan*/  host_command_length; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DISABLE_PHY_OFF ; 
 int EIO ; 
 int /*<<< orphan*/  HW_PHY_OFF_LOOP_DELAY ; 
 int /*<<< orphan*/  IPW2100_COMMAND ; 
 int IPW2100_COMMAND_PHY_OFF ; 
 int IPW2100_CONTROL_PHY_OFF ; 
 int /*<<< orphan*/  IPW2100_CONTROL_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ipw2100_priv*,struct host_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ipw2100_priv *priv)
{

#define HW_PHY_OFF_LOOP_DELAY (msecs_to_jiffies(50))

	struct host_command cmd = {
		.host_command = CARD_DISABLE_PHY_OFF,
		.host_command_sequence = 0,
		.host_command_length = 0,
	};
	int err, i;
	u32 val1, val2;

	FUNC0("CARD_DISABLE_PHY_OFF\n");

	/* Turn off the radio */
	err = FUNC1(priv, &cmd);
	if (err)
		return err;

	for (i = 0; i < 2500; i++) {
		FUNC2(priv->net_dev, IPW2100_CONTROL_REG, &val1);
		FUNC2(priv->net_dev, IPW2100_COMMAND, &val2);

		if ((val1 & IPW2100_CONTROL_PHY_OFF) &&
		    (val2 & IPW2100_COMMAND_PHY_OFF))
			return 0;

		FUNC3(HW_PHY_OFF_LOOP_DELAY);
	}

	return -EIO;
}