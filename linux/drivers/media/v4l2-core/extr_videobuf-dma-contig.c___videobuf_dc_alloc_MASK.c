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
struct videobuf_dma_contig_memory {unsigned long size; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dma_handle; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
			       struct videobuf_dma_contig_memory *mem,
			       unsigned long size, gfp_t flags)
{
	mem->size = size;
	mem->vaddr = FUNC2(dev, mem->size,
					&mem->dma_handle, flags);

	if (!mem->vaddr) {
		FUNC1(dev, "memory alloc size %ld failed\n", mem->size);
		return -ENOMEM;
	}

	FUNC0(dev, "dma mapped data is at %p (%ld)\n", mem->vaddr, mem->size);

	return 0;
}