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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct ena_rx_buffer {int /*<<< orphan*/  ena_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  refil_partial; } ;
struct ena_ring {size_t next_to_use; size_t* free_ids; int /*<<< orphan*/  ena_com_io_sq; int /*<<< orphan*/  qid; int /*<<< orphan*/  netdev; int /*<<< orphan*/  syncp; TYPE_1__ rx_stats; int /*<<< orphan*/  ring_size; int /*<<< orphan*/  adapter; struct ena_rx_buffer* rx_buffer_info; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int __GFP_COMP ; 
 int FUNC1 (struct ena_ring*,struct ena_rx_buffer*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct ena_ring*,size_t) ; 

__attribute__((used)) static int FUNC11(struct ena_ring *rx_ring, u32 num)
{
	u16 next_to_use, req_id;
	u32 i;
	int rc;

	next_to_use = rx_ring->next_to_use;

	for (i = 0; i < num; i++) {
		struct ena_rx_buffer *rx_info;

		req_id = rx_ring->free_ids[next_to_use];
		rc = FUNC10(rx_ring, req_id);
		if (FUNC9(rc < 0))
			break;

		rx_info = &rx_ring->rx_buffer_info[req_id];


		rc = FUNC1(rx_ring, rx_info,
				       GFP_ATOMIC | __GFP_COMP);
		if (FUNC9(rc < 0)) {
			FUNC6(rx_ring->adapter, rx_err, rx_ring->netdev,
				   "failed to alloc buffer for rx queue %d\n",
				   rx_ring->qid);
			break;
		}
		rc = FUNC2(rx_ring->ena_com_io_sq,
						&rx_info->ena_buf,
						req_id);
		if (FUNC9(rc)) {
			FUNC6(rx_ring->adapter, rx_status, rx_ring->netdev,
				   "failed to add buffer for rx queue %d\n",
				   rx_ring->qid);
			break;
		}
		next_to_use = FUNC0(next_to_use,
						   rx_ring->ring_size);
	}

	if (FUNC9(i < num)) {
		FUNC7(&rx_ring->syncp);
		rx_ring->rx_stats.refil_partial++;
		FUNC8(&rx_ring->syncp);
		FUNC5(rx_ring->netdev,
			    "refilled rx qid %d with only %d buffers (from %d)\n",
			    rx_ring->qid, i, num);
	}

	/* ena_com_write_sq_doorbell issues a wmb() */
	if (FUNC4(i))
		FUNC3(rx_ring->ena_com_io_sq);

	rx_ring->next_to_use = next_to_use;

	return i;
}