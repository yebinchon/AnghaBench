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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct il_queue {size_t write_ptr; } ;
struct il_tx_queue {scalar_t__ tfds; struct il_queue q; } ;
struct il_priv {int dummy; } ;
struct il3945_tfd {void* control_flags; TYPE_1__* tbs; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {void* len; void* addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int NUM_TFD_CHUNKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct il3945_tfd*,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct il_priv *il, struct il_tx_queue *txq,
				dma_addr_t addr, u16 len, u8 reset, u8 pad)
{
	int count;
	struct il_queue *q;
	struct il3945_tfd *tfd, *tfd_tmp;

	q = &txq->q;
	tfd_tmp = (struct il3945_tfd *)txq->tfds;
	tfd = &tfd_tmp[q->write_ptr];

	if (reset)
		FUNC6(tfd, 0, sizeof(*tfd));

	count = FUNC1(FUNC5(tfd->control_flags));

	if (count >= NUM_TFD_CHUNKS || count < 0) {
		FUNC0("Error can not send more than %d chunks\n",
		       NUM_TFD_CHUNKS);
		return -EINVAL;
	}

	tfd->tbs[count].addr = FUNC4(addr);
	tfd->tbs[count].len = FUNC4(len);

	count++;

	tfd->control_flags =
	    FUNC4(FUNC2(count) | FUNC3(pad));

	return 0;
}