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
struct mfd_cell {void* platform_data; size_t pdata_size; int /*<<< orphan*/  name; } ;
struct mc13xxx {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct mc13xxx*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct mfd_cell*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char const*,char const*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct mc13xxx *mc13xxx,
		const char *format, void *pdata, size_t pdata_size)
{
	char buf[30];
	const char *name = FUNC1(mc13xxx);

	struct mfd_cell cell = {
		.platform_data = pdata,
		.pdata_size = pdata_size,
	};

	/* there is no asnprintf in the kernel :-( */
	if (FUNC4(buf, sizeof(buf), format, name) > sizeof(buf))
		return -E2BIG;

	cell.name = FUNC0(buf, FUNC5(buf) + 1, GFP_KERNEL);
	if (!cell.name)
		return -ENOMEM;

	return FUNC2(mc13xxx->dev, -1, &cell, 1, NULL, 0,
			       FUNC3(mc13xxx->irq_data));
}