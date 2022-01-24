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
struct menelaus_vtg {int vtg_bits; int vtg_shift; int /*<<< orphan*/  mode_reg; int /*<<< orphan*/  vtg_reg; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 

__attribute__((used)) static int FUNC6(const struct menelaus_vtg *vtg, int mV,
				int vtg_val, int mode)
{
	int val, ret;
	struct i2c_client *c = the_menelaus->client;

	FUNC4(&the_menelaus->lock);

	ret = FUNC1(vtg->vtg_reg);
	if (ret < 0)
		goto out;
	val = ret & ~(((1 << vtg->vtg_bits) - 1) << vtg->vtg_shift);
	val |= vtg_val << vtg->vtg_shift;

	FUNC0(&c->dev, "Setting voltage '%s'"
			 "to %d mV (reg 0x%02x, val 0x%02x)\n",
			vtg->name, mV, vtg->vtg_reg, val);

	ret = FUNC2(vtg->vtg_reg, val);
	if (ret < 0)
		goto out;
	ret = FUNC2(vtg->mode_reg, mode);
out:
	FUNC5(&the_menelaus->lock);
	if (ret == 0) {
		/* Wait for voltage to stabilize */
		FUNC3(1);
	}
	return ret;
}