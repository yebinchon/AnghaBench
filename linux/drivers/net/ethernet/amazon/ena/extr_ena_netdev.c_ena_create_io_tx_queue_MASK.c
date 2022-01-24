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
struct ena_com_dev {int /*<<< orphan*/  tx_mem_queue_type; } ;
struct ena_com_create_io_ctx {int /*<<< orphan*/  numa_node; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  msix_vector; int /*<<< orphan*/  mem_queue_type; int /*<<< orphan*/  qid; int /*<<< orphan*/  direction; } ;
struct ena_adapter {int /*<<< orphan*/  netdev; struct ena_ring* tx_ring; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_COM_IO_QUEUE_DIRECTION_TX ; 
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
	struct ena_com_create_io_ctx ctx;
	struct ena_com_dev *ena_dev;
	struct ena_ring *tx_ring;
	u32 msix_vector;
	u16 ena_qid;
	int rc;

	ena_dev = adapter->ena_dev;

	tx_ring = &adapter->tx_ring[qid];
	msix_vector = FUNC0(qid);
	ena_qid = FUNC1(qid);

	FUNC7(&ctx, 0x0, sizeof(ctx));

	ctx.direction = ENA_COM_IO_QUEUE_DIRECTION_TX;
	ctx.qid = ena_qid;
	ctx.mem_queue_type = ena_dev->tx_mem_queue_type;
	ctx.msix_vector = msix_vector;
	ctx.queue_size = tx_ring->ring_size;
	ctx.numa_node = FUNC2(tx_ring->cpu);

	rc = FUNC3(ena_dev, &ctx);
	if (rc) {
		FUNC8(adapter, ifup, adapter->netdev,
			  "Failed to create I/O TX queue num %d rc: %d\n",
			  qid, rc);
		return rc;
	}

	rc = FUNC5(ena_dev, ena_qid,
				     &tx_ring->ena_com_io_sq,
				     &tx_ring->ena_com_io_cq);
	if (rc) {
		FUNC8(adapter, ifup, adapter->netdev,
			  "Failed to get TX queue handlers. TX queue num %d rc: %d\n",
			  qid, rc);
		FUNC4(ena_dev, ena_qid);
		return rc;
	}

	FUNC6(tx_ring->ena_com_io_cq, ctx.numa_node);
	return rc;
}