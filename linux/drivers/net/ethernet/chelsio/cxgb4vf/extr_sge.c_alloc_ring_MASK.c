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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,size_t,void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(struct device *dev, size_t nelem, size_t hwsize,
			size_t swsize, dma_addr_t *busaddrp, void *swringp,
			size_t stat_size)
{
	/*
	 * Allocate the hardware ring and PCI DMA bus address space for said.
	 */
	size_t hwlen = nelem * hwsize + stat_size;
	void *hwring = FUNC1(dev, hwlen, busaddrp, GFP_KERNEL);

	if (!hwring)
		return NULL;

	/*
	 * If the caller wants a software ring, allocate it and return a
	 * pointer to it in *swringp.
	 */
	FUNC0((swsize != 0) != (swringp != NULL));
	if (swsize) {
		void *swring = FUNC3(nelem, swsize, GFP_KERNEL);

		if (!swring) {
			FUNC2(dev, hwlen, hwring, *busaddrp);
			return NULL;
		}
		*(void **)swringp = swring;
	}

	return hwring;
}