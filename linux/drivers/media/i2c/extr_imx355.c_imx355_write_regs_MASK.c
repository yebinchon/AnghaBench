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
struct imx355_reg {int /*<<< orphan*/  address; int /*<<< orphan*/  val; } ;
struct imx355 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct imx355*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct imx355 *imx355,
			     const struct imx355_reg *regs, u32 len)
{
	struct i2c_client *client = FUNC2(&imx355->sd);
	int ret;
	u32 i;

	for (i = 0; i < len; i++) {
		ret = FUNC1(imx355, regs[i].address, 1, regs[i].val);
		if (ret) {
			FUNC0(&client->dev,
					    "write reg 0x%4.4x return err %d",
					    regs[i].address, ret);

			return ret;
		}
	}

	return 0;
}