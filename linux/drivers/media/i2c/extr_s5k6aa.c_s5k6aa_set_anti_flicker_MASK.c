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
typedef  int u16 ;
struct s5k6aa {int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int AALG_FLICKER_EN_MASK ; 
 int /*<<< orphan*/  REG_DBG_AUTOALG_EN ; 
 int /*<<< orphan*/  REG_SF_FLICKER_QUANT ; 
 int /*<<< orphan*/  REG_SF_FLICKER_QUANT_CHG ; 
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct s5k6aa *s5k6aa, int value)
{
	struct i2c_client *client = FUNC2(&s5k6aa->sd);
	u16 auto_alg;
	int ret;

	ret = FUNC0(client, REG_DBG_AUTOALG_EN, &auto_alg);
	if (ret)
		return ret;

	if (value == V4L2_CID_POWER_LINE_FREQUENCY_AUTO) {
		auto_alg |= AALG_FLICKER_EN_MASK;
	} else {
		auto_alg &= ~AALG_FLICKER_EN_MASK;
		/* The V4L2_CID_LINE_FREQUENCY control values match
		 * the register values */
		ret = FUNC1(client, REG_SF_FLICKER_QUANT, value);
		if (ret)
			return ret;
		ret = FUNC1(client, REG_SF_FLICKER_QUANT_CHG, 1);
		if (ret)
			return ret;
	}

	return FUNC1(client, REG_DBG_AUTOALG_EN, auto_alg);
}