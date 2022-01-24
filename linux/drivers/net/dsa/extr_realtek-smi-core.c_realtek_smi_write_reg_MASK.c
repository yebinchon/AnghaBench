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
typedef  int u32 ;
struct realtek_smi {int cmd_write; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct realtek_smi*) ; 
 int /*<<< orphan*/  FUNC1 (struct realtek_smi*) ; 
 int FUNC2 (struct realtek_smi*,int) ; 
 int FUNC3 (struct realtek_smi*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct realtek_smi *smi,
				 u32 addr, u32 data, bool ack)
{
	unsigned long flags;
	int ret;

	FUNC4(&smi->lock, flags);

	FUNC0(smi);

	/* Send WRITE command */
	ret = FUNC2(smi, smi->cmd_write);
	if (ret)
		goto out;

	/* Set ADDR[7:0] */
	ret = FUNC2(smi, addr & 0xff);
	if (ret)
		goto out;

	/* Set ADDR[15:8] */
	ret = FUNC2(smi, addr >> 8);
	if (ret)
		goto out;

	/* Write DATA[7:0] */
	ret = FUNC2(smi, data & 0xff);
	if (ret)
		goto out;

	/* Write DATA[15:8] */
	if (ack)
		ret = FUNC2(smi, data >> 8);
	else
		ret = FUNC3(smi, data >> 8);
	if (ret)
		goto out;

	ret = 0;

 out:
	FUNC1(smi);
	FUNC5(&smi->lock, flags);

	return ret;
}