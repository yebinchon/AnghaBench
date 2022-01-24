#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mspro_block_data {scalar_t__ data_dir; int current_seg; unsigned int page_size; int current_page; int /*<<< orphan*/  q_lock; int /*<<< orphan*/ * block_req; TYPE_2__* req_sg; } ;
struct TYPE_3__ {scalar_t__ tpc; } ;
struct memstick_dev {int /*<<< orphan*/  mrq_complete; int /*<<< orphan*/  next_request; int /*<<< orphan*/  dev; TYPE_1__ current_mrq; } ;
struct TYPE_4__ {unsigned int length; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ MSPRO_CMD_STOP ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  h_mspro_block_default_bad ; 
 struct mspro_block_data* FUNC7 (struct memstick_dev*) ; 
 int FUNC8 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct memstick_dev *card, int error)
{
	struct mspro_block_data *msb = FUNC7(card);
	int cnt;
	bool chunk;
	unsigned int t_len = 0;
	unsigned long flags;

	FUNC9(&msb->q_lock, flags);
	FUNC5(&card->dev, "complete %d, %d\n", msb->block_req ? 1 : 0,
		error);

	if (msb->block_req) {
		/* Nothing to do - not really an error */
		if (error == -EAGAIN)
			error = 0;

		if (error || (card->current_mrq.tpc == MSPRO_CMD_STOP)) {
			if (msb->data_dir == READ) {
				for (cnt = 0; cnt < msb->current_seg; cnt++) {
					t_len += msb->req_sg[cnt].length
						 / msb->page_size;

					if (msb->current_page)
						t_len += msb->current_page - 1;

					t_len *= msb->page_size;
				}
			}
		} else
			t_len = FUNC1(msb->block_req);

		FUNC5(&card->dev, "transferred %x (%d)\n", t_len, error);

		if (error && !t_len)
			t_len = FUNC2(msb->block_req);

		chunk = FUNC3(msb->block_req,
				FUNC6(error), t_len);
		if (chunk) {
			error = FUNC8(card);
			if (!error)
				goto out;
		} else {
			FUNC0(msb->block_req,
						FUNC6(error));
			msb->block_req = NULL;
		}
	} else {
		if (!error)
			error = -EAGAIN;
	}

	card->next_request = h_mspro_block_default_bad;
	FUNC4(&card->mrq_complete);
out:
	FUNC10(&msb->q_lock, flags);
	return error;
}