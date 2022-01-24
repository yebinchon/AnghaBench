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
struct cros_ec_dev {unsigned int* features; int /*<<< orphan*/  dev; int /*<<< orphan*/  ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int /*<<< orphan*/  data; int /*<<< orphan*/  result; int /*<<< orphan*/  insize; scalar_t__ command; } ;

/* Variables and functions */
 scalar_t__ EC_CMD_GET_FEATURES ; 
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct cros_ec_dev *ec, int feature)
{
	struct cros_ec_command *msg;
	int ret;

	if (ec->features[0] == -1U && ec->features[1] == -1U) {
		/* features bitmap not read yet */
		msg = FUNC5(sizeof(*msg) + sizeof(ec->features), GFP_KERNEL);
		if (!msg)
			return -ENOMEM;

		msg->command = EC_CMD_GET_FEATURES + ec->cmd_offset;
		msg->insize = sizeof(ec->features);

		ret = FUNC1(ec->ec_dev, msg);
		if (ret < 0) {
			FUNC3(ec->dev, "cannot get EC features: %d/%d\n",
				 ret, msg->result);
			FUNC7(ec->features, 0, sizeof(ec->features));
		} else {
			FUNC6(ec->features, msg->data, sizeof(ec->features));
		}

		FUNC2(ec->dev, "EC features %08x %08x\n",
			ec->features[0], ec->features[1]);

		FUNC4(msg);
	}

	return ec->features[feature / 32] & FUNC0(feature);
}