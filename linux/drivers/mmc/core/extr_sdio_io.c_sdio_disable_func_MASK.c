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
struct sdio_func {int num; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SDIO_CCCR_IOEx ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 

int FUNC3(struct sdio_func *func)
{
	int ret;
	unsigned char reg;

	if (!func)
		return -EINVAL;

	FUNC1("SDIO: Disabling device %s...\n", FUNC2(func));

	ret = FUNC0(func->card, 0, 0, SDIO_CCCR_IOEx, 0, &reg);
	if (ret)
		goto err;

	reg &= ~(1 << func->num);

	ret = FUNC0(func->card, 1, 0, SDIO_CCCR_IOEx, reg, NULL);
	if (ret)
		goto err;

	FUNC1("SDIO: Disabled device %s\n", FUNC2(func));

	return 0;

err:
	FUNC1("SDIO: Failed to disable device %s\n", FUNC2(func));
	return -EIO;
}