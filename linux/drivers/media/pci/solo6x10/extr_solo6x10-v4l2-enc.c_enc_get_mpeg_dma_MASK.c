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
struct solo_dev {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct solo_dev*) ; 
 unsigned int FUNC1 (struct solo_dev*) ; 
 int FUNC2 (struct solo_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct solo_dev *solo_dev, dma_addr_t dma,
			      unsigned int off, unsigned int size)
{
	int ret;

	if (off > FUNC1(solo_dev))
		return -EINVAL;

	/* Single shot */
	if (off + size <= FUNC1(solo_dev)) {
		return FUNC2(solo_dev, 0, dma,
				      FUNC0(solo_dev) + off, size,
				      0, 0);
	}

	/* Buffer wrap */
	ret = FUNC2(solo_dev, 0, dma,
			     FUNC0(solo_dev) + off,
			     FUNC1(solo_dev) - off, 0, 0);

	if (!ret) {
		ret = FUNC2(solo_dev, 0,
			     dma + FUNC1(solo_dev) - off,
			     FUNC0(solo_dev),
			     size + off - FUNC1(solo_dev), 0, 0);
	}

	return ret;
}