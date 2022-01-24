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
typedef  int /*<<< orphan*/  u8 ;
struct code_block {int length; int /*<<< orphan*/ * pulse; } ;
struct IR_i2c {TYPE_1__* c; int /*<<< orphan*/  tx_c; } ;
typedef  int /*<<< orphan*/  code_block ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZILOG_INIT_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct IR_i2c*,int /*<<< orphan*/ ,struct code_block*) ; 

__attribute__((used)) static int FUNC5(struct IR_i2c *ir)
{
	struct code_block code_block = { .length = sizeof(code_block) };
	u8 buf[4];
	int ret;

	FUNC3(0x1000, &code_block.pulse[3]);

	ret = FUNC4(ir, ZILOG_INIT_END, &code_block);
	if (ret)
		return ret;

	ret = FUNC2(ir->tx_c, buf, 4);
	if (ret != 4) {
		FUNC0(&ir->c->dev, "failed to retrieve firmware version: %d\n",
			ret);
		return ret < 0 ? ret : -EIO;
	}

	FUNC1(&ir->c->dev, "Zilog/Hauppauge IR blaster firmware version %d.%d.%d\n",
		 buf[1], buf[2], buf[3]);

	return 0;
}