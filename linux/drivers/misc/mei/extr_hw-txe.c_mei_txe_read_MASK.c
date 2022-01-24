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
typedef  unsigned long u32 ;
struct mei_txe_hw {int dummy; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long MEI_SLOT_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct mei_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_txe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long*,unsigned long) ; 
 struct mei_txe_hw* FUNC5 (struct mei_device*) ; 

__attribute__((used)) static int FUNC6(struct mei_device *dev,
		unsigned char *buf, unsigned long len)
{

	struct mei_txe_hw *hw = FUNC5(dev);
	u32 *reg_buf, reg;
	u32 rem;
	u32 i;

	if (FUNC0(!buf || !len))
		return -EINVAL;

	reg_buf = (u32 *)buf;
	rem = len & 0x3;

	FUNC1(dev->dev, "buffer-length = %lu buf[0]0x%08X\n",
		len, FUNC2(dev, 0));

	for (i = 0; i < len / MEI_SLOT_SIZE; i++) {
		/* skip header: index starts from 1 */
		reg = FUNC2(dev, i + 1);
		FUNC1(dev->dev, "buf[%d] = 0x%08X\n", i, reg);
		*reg_buf++ = reg;
	}

	if (rem) {
		reg = FUNC2(dev, i + 1);
		FUNC4(reg_buf, &reg, rem);
	}

	FUNC3(hw);
	return 0;
}