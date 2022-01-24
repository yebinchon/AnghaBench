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
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct scif_hw_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_device*,int /*<<< orphan*/ ,size_t) ; 
 struct mic_device* FUNC2 (struct scif_hw_dev*) ; 

__attribute__((used)) static void
FUNC3(struct device *dev, dma_addr_t dma_addr,
		     size_t size, enum dma_data_direction dir,
		     unsigned long attrs)
{
	struct scif_hw_dev *scdev = FUNC0(dev);
	struct mic_device *mdev = FUNC2(scdev);

	FUNC1(mdev, dma_addr, size);
}