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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct realtek_smi {int cmd_read; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct realtek_smi*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct realtek_smi*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct realtek_smi*) ; 
 int /*<<< orphan*/  FUNC3 (struct realtek_smi*) ; 
 int FUNC4 (struct realtek_smi*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct realtek_smi *smi, u32 addr, u32 *data)
{
	unsigned long flags;
	u8 lo = 0;
	u8 hi = 0;
	int ret;

	FUNC5(&smi->lock, flags);

	FUNC2(smi);

	/* Send READ command */
	ret = FUNC4(smi, smi->cmd_read);
	if (ret)
		goto out;

	/* Set ADDR[7:0] */
	ret = FUNC4(smi, addr & 0xff);
	if (ret)
		goto out;

	/* Set ADDR[15:8] */
	ret = FUNC4(smi, addr >> 8);
	if (ret)
		goto out;

	/* Read DATA[7:0] */
	FUNC0(smi, &lo);
	/* Read DATA[15:8] */
	FUNC1(smi, &hi);

	*data = ((u32)lo) | (((u32)hi) << 8);

	ret = 0;

 out:
	FUNC3(smi);
	FUNC6(&smi->lock, flags);

	return ret;
}