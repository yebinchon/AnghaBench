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
typedef  size_t u8 ;
struct aat2870_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  client; TYPE_1__* reg_cache; } ;
struct TYPE_2__ {size_t value; int /*<<< orphan*/  readable; } ;

/* Variables and functions */
 size_t AAT2870_REG_NUM ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t*,int) ; 

__attribute__((used)) static int FUNC4(struct aat2870_data *aat2870, u8 addr, u8 *val)
{
	int ret;

	if (addr >= AAT2870_REG_NUM) {
		FUNC1(aat2870->dev, "Invalid address, 0x%02x\n", addr);
		return -EINVAL;
	}

	if (!aat2870->reg_cache[addr].readable) {
		*val = aat2870->reg_cache[addr].value;
		goto out;
	}

	ret = FUNC3(aat2870->client, &addr, 1);
	if (ret < 0)
		return ret;
	if (ret != 1)
		return -EIO;

	ret = FUNC2(aat2870->client, val, 1);
	if (ret < 0)
		return ret;
	if (ret != 1)
		return -EIO;

out:
	FUNC0(aat2870->dev, "read: addr=0x%02x, val=0x%02x\n", addr, *val);
	return 0;
}