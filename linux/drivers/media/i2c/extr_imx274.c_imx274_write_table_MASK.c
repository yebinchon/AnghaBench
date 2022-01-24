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
typedef  int /*<<< orphan*/  u8 ;
struct stimx274 {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct reg_8 {int addr; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int IMX274_TABLE_END ; 
 int IMX274_TABLE_WAIT_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct regmap*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct regmap*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct stimx274 *priv, const struct reg_8 table[])
{
	struct regmap *regmap = priv->regmap;
	int err = 0;
	const struct reg_8 *next;
	u8 val;

	int range_start = -1;
	int range_count = 0;
	u8 range_vals[16];
	int max_range_vals = FUNC0(range_vals);

	for (next = table;; next++) {
		if ((next->addr != range_start + range_count) ||
		    (next->addr == IMX274_TABLE_END) ||
		    (next->addr == IMX274_TABLE_WAIT_MS) ||
		    (range_count == max_range_vals)) {
			if (range_count == 1)
				err = FUNC3(regmap,
						   range_start, range_vals[0]);
			else if (range_count > 1)
				err = FUNC2(regmap, range_start,
							&range_vals[0],
							range_count);
			else
				err = 0;

			if (err)
				return err;

			range_start = -1;
			range_count = 0;

			/* Handle special address values */
			if (next->addr == IMX274_TABLE_END)
				break;

			if (next->addr == IMX274_TABLE_WAIT_MS) {
				FUNC1(next->val);
				continue;
			}
		}

		val = next->val;

		if (range_start == -1)
			range_start = next->addr;

		range_vals[range_count++] = val;
	}
	return 0;
}