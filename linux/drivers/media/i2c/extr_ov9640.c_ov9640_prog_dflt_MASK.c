#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ov9640_regs_dflt ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC0(ov9640_regs_dflt); i++) {
		ret = FUNC2(client, ov9640_regs_dflt[i].reg,
				       ov9640_regs_dflt[i].val);
		if (ret)
			return ret;
	}

	/* wait for the changes to actually happen, 140ms are not enough yet */
	FUNC1(150);

	return 0;
}