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
struct scif_hw_dev {int dummy; } ;
struct mic_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int __GFP_ZERO ; 
 struct scif_hw_dev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mic_device*,void*,size_t) ; 
 struct mic_device* FUNC5 (struct scif_hw_dev*) ; 

__attribute__((used)) static void *FUNC6(struct device *dev, size_t size,
			     dma_addr_t *dma_handle, gfp_t gfp,
			     unsigned long attrs)
{
	struct scif_hw_dev *scdev = FUNC0(dev);
	struct mic_device *mdev = FUNC5(scdev);
	dma_addr_t tmp;
	void *va = FUNC3(size, gfp | __GFP_ZERO);

	if (va) {
		tmp = FUNC4(mdev, va, size);
		if (FUNC1(dev, tmp)) {
			FUNC2(va);
			va = NULL;
		} else {
			*dma_handle = tmp;
		}
	}
	return va;
}