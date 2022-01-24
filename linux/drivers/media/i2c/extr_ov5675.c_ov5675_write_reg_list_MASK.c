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
struct ov5675_reg_list {unsigned int num_of_regs; TYPE_1__* regs; } ;
struct ov5675 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  address; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ov5675*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ov5675 *ov5675,
				 const struct ov5675_reg_list *r_list)
{
	struct i2c_client *client = FUNC2(&ov5675->sd);
	unsigned int i;
	int ret;

	for (i = 0; i < r_list->num_of_regs; i++) {
		ret = FUNC1(ov5675, r_list->regs[i].address, 1,
				       r_list->regs[i].val);
		if (ret) {
			FUNC0(&client->dev,
				    "failed to write reg 0x%4.4x. error = %d",
				    r_list->regs[i].address, ret);
			return ret;
		}
	}

	return 0;
}