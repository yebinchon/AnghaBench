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
struct page {int dummy; } ;
struct mic_device {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct scif_hw_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mic_device* FUNC4 (struct scif_hw_dev*) ; 

__attribute__((used)) static dma_addr_t
FUNC5(struct device *dev, struct page *page, unsigned long offset,
		   size_t size, enum dma_data_direction dir,
		   unsigned long attrs)
{
	void *va = FUNC3(FUNC2(page)) + offset;
	struct scif_hw_dev *scdev = FUNC0(dev);
	struct mic_device *mdev = FUNC4(scdev);

	return FUNC1(mdev, va, size);
}