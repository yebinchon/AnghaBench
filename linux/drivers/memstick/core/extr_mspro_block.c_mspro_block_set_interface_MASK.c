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
struct mspro_param_register {unsigned char system; int /*<<< orphan*/  tpc_param; int /*<<< orphan*/  data_address; int /*<<< orphan*/  data_count; } ;
struct mspro_block_data {int /*<<< orphan*/  mrq_handler; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int error; } ;
struct memstick_dev {TYPE_1__ current_mrq; int /*<<< orphan*/  mrq_complete; int /*<<< orphan*/  next_request; struct memstick_host* host; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  MS_TPC_WRITE_REG ; 
 int /*<<< orphan*/  h_mspro_block_default ; 
 int /*<<< orphan*/  h_mspro_block_req_init ; 
 struct mspro_block_data* FUNC0 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct mspro_param_register*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct memstick_dev *card,
				     unsigned char sys_reg)
{
	struct memstick_host *host = card->host;
	struct mspro_block_data *msb = FUNC0(card);
	struct mspro_param_register param = {
		.system = sys_reg,
		.data_count = 0,
		.data_address = 0,
		.tpc_param = 0
	};

	card->next_request = h_mspro_block_req_init;
	msb->mrq_handler = h_mspro_block_default;
	FUNC1(&card->current_mrq, MS_TPC_WRITE_REG, &param,
			  sizeof(param));
	FUNC2(host);
	FUNC3(&card->mrq_complete);
	return card->current_mrq.error;
}