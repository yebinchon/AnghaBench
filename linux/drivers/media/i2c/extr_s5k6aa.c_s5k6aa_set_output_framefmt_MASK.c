#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct s5k6aa_preset {int /*<<< orphan*/  index; TYPE_1__ mbus_fmt; } ;
struct s5k6aa {int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg_p_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* s5k6aa_formats ; 
 int FUNC3 (struct s5k6aa*,TYPE_1__*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct s5k6aa *s5k6aa,
				      struct s5k6aa_preset *preset)
{
	struct i2c_client *client = FUNC5(&s5k6aa->sd);
	int fmt_index = FUNC3(s5k6aa, &preset->mbus_fmt);
	int ret;

	ret = FUNC4(client, FUNC2(preset->index),
			   preset->mbus_fmt.width);
	if (!ret)
		ret = FUNC4(client, FUNC1(preset->index),
				   preset->mbus_fmt.height);
	if (!ret)
		ret = FUNC4(client, FUNC0(preset->index),
				   s5k6aa_formats[fmt_index].reg_p_fmt);
	return ret;
}