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
struct mei_dma_dscr {scalar_t__ vaddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  size; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mei_device *dev,
			       struct mei_dma_dscr *dscr)
{
	if (!dscr->size)
		return 0;

	if (FUNC0(!FUNC2(dscr->size)))
		return -EINVAL;

	if (dscr->vaddr)
		return 0;

	dscr->vaddr = FUNC1(dev->dev, dscr->size, &dscr->daddr,
					  GFP_KERNEL);
	if (!dscr->vaddr)
		return -ENOMEM;

	return 0;
}