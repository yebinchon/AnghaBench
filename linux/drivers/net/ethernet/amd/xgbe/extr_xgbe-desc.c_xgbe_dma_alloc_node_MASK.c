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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 void* FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 

__attribute__((used)) static void *FUNC3(struct device *dev, size_t size,
				 dma_addr_t *dma, int node)
{
	void *mem;
	int cur_node = FUNC0(dev);

	FUNC2(dev, node);
	mem = FUNC1(dev, size, dma, GFP_KERNEL);
	FUNC2(dev, cur_node);

	if (!mem)
		mem = FUNC1(dev, size, dma, GFP_KERNEL);

	return mem;
}