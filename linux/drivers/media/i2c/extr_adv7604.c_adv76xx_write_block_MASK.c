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
struct regmap {int dummy; } ;
struct adv76xx_state {struct regmap** regmap; } ;

/* Variables and functions */
 size_t I2C_SMBUS_BLOCK_MAX ; 
 int FUNC0 (struct regmap*,unsigned int,void const*,size_t) ; 

__attribute__((used)) static int FUNC1(struct adv76xx_state *state, int client_page,
			      unsigned int init_reg, const void *val,
			      size_t val_len)
{
	struct regmap *regmap = state->regmap[client_page];

	if (val_len > I2C_SMBUS_BLOCK_MAX)
		val_len = I2C_SMBUS_BLOCK_MAX;

	return FUNC0(regmap, init_reg, val, val_len);
}