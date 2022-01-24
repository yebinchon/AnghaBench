#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_6__ {TYPE_1__* gain; TYPE_2__* exposure; } ;
struct s5k6aa {TYPE_3__ ctrls; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_5__ {unsigned int val; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int AALG_AE_EN_MASK ; 
 int AALG_DIVLEI_EN_MASK ; 
 int /*<<< orphan*/  REG_DBG_AUTOALG_EN ; 
 int V4L2_EXPOSURE_AUTO ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct i2c_client*,unsigned int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,unsigned int,int,int) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct s5k6aa *s5k6aa, int value)
{
	struct i2c_client *c = FUNC5(&s5k6aa->sd);
	unsigned int exp_time = s5k6aa->ctrls.exposure->val;
	u16 auto_alg;

	int ret = FUNC0(c, REG_DBG_AUTOALG_EN, &auto_alg);
	if (ret)
		return ret;

	FUNC4(1, debug, c, "man_exp: %d, auto_exp: %d, a_alg: 0x%x\n",
		 exp_time, value, auto_alg);

	if (value == V4L2_EXPOSURE_AUTO) {
		auto_alg |= AALG_AE_EN_MASK | AALG_DIVLEI_EN_MASK;
	} else {
		ret = FUNC1(c, exp_time);
		if (ret)
			return ret;
		ret = FUNC2(c, s5k6aa->ctrls.gain->val);
		if (ret)
			return ret;
		auto_alg &= ~(AALG_AE_EN_MASK | AALG_DIVLEI_EN_MASK);
	}

	return FUNC3(c, REG_DBG_AUTOALG_EN, auto_alg);
}