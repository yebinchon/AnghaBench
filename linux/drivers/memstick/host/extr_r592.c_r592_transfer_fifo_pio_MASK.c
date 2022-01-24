#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sg_mapping_iter {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct r592_device {TYPE_1__* req; int /*<<< orphan*/  pio_fifo; } ;
struct TYPE_2__ {scalar_t__ tpc; int /*<<< orphan*/  sg; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; int /*<<< orphan*/  long_data; } ;

/* Variables and functions */
 scalar_t__ MS_TPC_SET_RW_REG_ADRS ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_FROM_SG ; 
 int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct r592_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct sg_mapping_iter*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_mapping_iter*) ; 

__attribute__((used)) static int FUNC9(struct r592_device *dev)
{
	unsigned long flags;

	bool is_write = dev->req->tpc >= MS_TPC_SET_RW_REG_ADRS;
	struct sg_mapping_iter miter;

	FUNC0(&dev->pio_fifo);

	if (!dev->req->long_data) {
		if (is_write) {
			FUNC5(dev, dev->req->data,
							dev->req->data_len);
			FUNC3(dev);
		} else
			FUNC4(dev, dev->req->data,
							dev->req->data_len);
		return 0;
	}

	FUNC2(flags);
	FUNC7(&miter, &dev->req->sg, 1, SG_MITER_ATOMIC |
		(is_write ? SG_MITER_FROM_SG : SG_MITER_TO_SG));

	/* Do the transfer fifo<->memory*/
	while (FUNC6(&miter))
		if (is_write)
			FUNC5(dev, miter.addr, miter.length);
		else
			FUNC4(dev, miter.addr, miter.length);


	/* Write last few non aligned bytes*/
	if (is_write)
		FUNC3(dev);

	FUNC8(&miter);
	FUNC1(flags);
	return 0;
}