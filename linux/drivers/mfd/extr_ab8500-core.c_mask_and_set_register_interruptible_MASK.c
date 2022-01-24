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
typedef  int u8 ;
typedef  int u16 ;
struct ab8500 {int (* write_masked ) (struct ab8500*,int,int,int) ;int (* read ) (struct ab8500*,int) ;int (* write ) (struct ab8500*,int,int) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ab8500*,int) ; 
 int FUNC5 (struct ab8500*,int,int) ; 
 int FUNC6 (struct ab8500*,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct ab8500 *ab8500, u8 bank,
	u8 reg, u8 bitmask, u8 bitvalues)
{
	int ret;
	u16 addr = ((u16)bank) << 8 | reg;

	FUNC2(&ab8500->lock);

	if (ab8500->write_masked == NULL) {
		u8 data;

		ret = ab8500->read(ab8500, addr);
		if (ret < 0) {
			FUNC0(ab8500->dev, "failed to read reg %#x: %d\n",
				addr, ret);
			goto out;
		}

		data = (u8)ret;
		data = (~bitmask & data) | (bitmask & bitvalues);

		ret = ab8500->write(ab8500, addr, data);
		if (ret < 0)
			FUNC0(ab8500->dev, "failed to write reg %#x: %d\n",
				addr, ret);

		FUNC1(ab8500->dev, "mask: addr %#x => data %#x\n", addr,
			data);
		goto out;
	}
	ret = ab8500->write_masked(ab8500, addr, bitmask, bitvalues);
	if (ret < 0)
		FUNC0(ab8500->dev, "failed to modify reg %#x: %d\n", addr,
			ret);
out:
	FUNC3(&ab8500->lock);
	return ret;
}