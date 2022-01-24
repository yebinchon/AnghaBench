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
typedef  size_t u32 ;
struct ov13858_reg {int /*<<< orphan*/  address; int /*<<< orphan*/  val; } ;
struct ov13858 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ov13858*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ov13858 *ov13858,
			      const struct ov13858_reg *regs, u32 len)
{
	struct i2c_client *client = FUNC2(&ov13858->sd);
	int ret;
	u32 i;

	for (i = 0; i < len; i++) {
		ret = FUNC1(ov13858, regs[i].address, 1,
					regs[i].val);
		if (ret) {
			FUNC0(
				&client->dev,
				"Failed to write reg 0x%4.4x. error = %d\n",
				regs[i].address, ret);

			return ret;
		}
	}

	return 0;
}