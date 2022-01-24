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
struct sg_mapping_iter {int dummy; } ;
struct cb710_slot {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ CB710_MMC_DATA_PORT ; 
 int /*<<< orphan*/  CB710_MMC_S1_PIO_TRANSFER_DONE ; 
 int CB710_MMC_S2_FIFO_READY ; 
 int /*<<< orphan*/  CB710_MMC_STATUS2_PORT ; 
 int FUNC0 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sg_mapping_iter*,scalar_t__,size_t) ; 
 int FUNC2 (struct cb710_slot*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cb710_slot *slot,
	struct sg_mapping_iter *miter, size_t dw_count)
{
	if (!(FUNC0(slot, CB710_MMC_STATUS2_PORT) & CB710_MMC_S2_FIFO_READY)) {
		int err = FUNC2(slot,
			CB710_MMC_S1_PIO_TRANSFER_DONE);
		if (err)
			return err;
	}

	FUNC1(miter,
		slot->iobase + CB710_MMC_DATA_PORT, dw_count);

	return 0;
}