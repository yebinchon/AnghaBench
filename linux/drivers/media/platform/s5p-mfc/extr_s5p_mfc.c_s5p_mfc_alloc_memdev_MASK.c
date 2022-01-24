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
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  release; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  coherent_dma_mask; struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct device* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  s5p_mfc_memdev_release ; 

__attribute__((used)) static struct device *FUNC9(struct device *dev,
					   const char *name, unsigned int idx)
{
	struct device *child;
	int ret;

	child = FUNC5(dev, sizeof(*child), GFP_KERNEL);
	if (!child)
		return NULL;

	FUNC4(child);
	FUNC1(child, "%s:%s", FUNC0(dev), name);
	child->parent = dev;
	child->coherent_dma_mask = dev->coherent_dma_mask;
	child->dma_mask = dev->dma_mask;
	child->release = s5p_mfc_memdev_release;

	/*
	 * The memdevs are not proper OF platform devices, so in order for them
	 * to be treated as valid DMA masters we need a bit of a hack to force
	 * them to inherit the MFC node's DMA configuration.
	 */
	FUNC6(child, dev->of_node, true);

	if (FUNC2(child) == 0) {
		ret = FUNC7(child, dev->of_node,
							 idx);
		if (ret == 0)
			return child;
		FUNC3(child);
	}

	FUNC8(child);
	return NULL;
}