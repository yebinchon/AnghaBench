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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ena_ring {int /*<<< orphan*/  ena_com_io_cq; int /*<<< orphan*/  ena_com_io_sq; int /*<<< orphan*/  cpu; int /*<<< orphan*/  ring_size; } ;
struct ena_com_dev {int dummy; } ;
struct ena_com_create_io_ctx {int /*<<< orphan*/  numa_node; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  msix_vector; int /*<<< orphan*/  mem_queue_type; int /*<<< orphan*/  direction; int /*<<< orphan*/  qid; } ;
struct ena_adapter {int /*<<< orphan*/  netdev; struct ena_ring* rx_ring; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ADMIN_PLACEMENT_POLICY_HOST ; 
 int /*<<< orphan*/  ENA_COM_IO_QUEUE_DIRECTION_RX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ena_com_dev*,struct ena_com_create_io_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ena_com_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC7 (struct ena_com_create_io_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC9(struct ena_adapter *adapter, int qid)
{
	struct ena_com_dev *ena_dev;
	struct ena_com_create_io_ctx ctx;
	struct ena_ring *rx_ring;
	u32 msix_vector;
	u16 ena_qid;
	int rc;

	ena_dev = adapter->ena_dev;

	rx_ring = &adapter->rx_ring[qid];
	msix_vector = FUNC0(qid);
	ena_qid = FUNC1(qid);

	FUNC7(&ctx, 0x0, sizeof(ctx));

	ctx.qid = ena_qid;
	ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_RX;
	ctx.mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
	ctx.msix_vector = msix_vector;
	ctx.queue_size = rx_ring->ring_size;
	ctx.numa_node = FUNC2(rx_ring->cpu);

	rc = FUNC3(ena_dev, &ctx);
	if (rc) {
		FUNC8(adapter, ifup, adapter->netdev,
			  "Failed to create I/O RX queue num %d rc: %d\n",
			  qid, rc);
		return rc;
	}

	rc = FUNC5(ena_dev, ena_qid,
				     &rx_ring->ena_com_io_sq,
				     &rx_ring->ena_com_io_cq);
	if (rc) {
		FUNC8(adapter, ifup, adapter->netdev,
			  "Failed to get RX queue handlers. RX queue num %d rc: %d\n",
			  qid, rc);
		FUNC4(ena_dev, ena_qid);
		return rc;
	}

	FUNC6(rx_ring->ena_com_io_cq, ctx.numa_node);

	return rc;
}