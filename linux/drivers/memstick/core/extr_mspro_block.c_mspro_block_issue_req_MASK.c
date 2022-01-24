#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mspro_block_data {scalar_t__ data_dir; int /*<<< orphan*/  transfer_cmd; TYPE_1__* block_req; int /*<<< orphan*/  (* setup_transfer ) (struct memstick_dev*,int,unsigned int) ;int /*<<< orphan*/  seg_count; int /*<<< orphan*/  req_sg; scalar_t__ current_seg; scalar_t__ current_page; } ;
struct memstick_dev {int /*<<< orphan*/  host; } ;
struct TYPE_8__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  MSPRO_CMD_READ_DATA ; 
 int /*<<< orphan*/  MSPRO_CMD_WRITE_DATA ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mspro_block_data* FUNC6 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct memstick_dev*,int,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct memstick_dev *card)
{
	struct mspro_block_data *msb = FUNC6(card);
	u64 t_off;
	unsigned int count;

	while (true) {
		msb->current_page = 0;
		msb->current_seg = 0;
		msb->seg_count = FUNC3(msb->block_req->q,
					       msb->block_req,
					       msb->req_sg);

		if (!msb->seg_count) {
			unsigned int bytes = FUNC2(msb->block_req);
			bool chunk;

			chunk = FUNC5(msb->block_req,
							BLK_STS_RESOURCE,
							bytes);
			if (chunk)
				continue;
			FUNC0(msb->block_req,
						BLK_STS_RESOURCE);
			msb->block_req = NULL;
			return -EAGAIN;
		}

		t_off = FUNC4(msb->block_req);
		t_off <<= 9;
		count = FUNC1(msb->block_req);

		msb->setup_transfer(card, t_off, count);

		msb->data_dir = FUNC8(msb->block_req);
		msb->transfer_cmd = msb->data_dir == READ
				    ? MSPRO_CMD_READ_DATA
				    : MSPRO_CMD_WRITE_DATA;

		FUNC7(card->host);
		return 0;
	}
}