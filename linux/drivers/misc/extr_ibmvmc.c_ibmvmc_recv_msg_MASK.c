#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u16 ;
struct ibmvmc_hmc {scalar_t__ state; size_t queue_head; size_t* queue_outbound_msgs; size_t queue_tail; int /*<<< orphan*/  lock; struct ibmvmc_buffer* buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  msg_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer_id; } ;
struct ibmvmc_crq_msg {size_t hmc_session; size_t hmc_index; TYPE_2__ var3; TYPE_1__ var2; } ;
struct ibmvmc_buffer {scalar_t__ valid; scalar_t__ owner; unsigned long msg_len; scalar_t__ free; int /*<<< orphan*/  dma_addr_local; int /*<<< orphan*/  dma_addr_remote; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  liobn; int /*<<< orphan*/  riobn; } ;
struct TYPE_6__ {size_t max_hmc_index; size_t max_buffer_pool_size; } ;

/* Variables and functions */
 scalar_t__ VMC_BUF_OWNER_ALPHA ; 
 int /*<<< orphan*/  VMC_MSG_INVALID_BUFFER_ID ; 
 int /*<<< orphan*/  VMC_MSG_INVALID_HMC_INDEX ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ibmvmc_hmc* hmcs ; 
 scalar_t__ ibmhmc_state_free ; 
 TYPE_3__ ibmvmc ; 
 size_t ibmvmc_max_buf_pool_size ; 
 int /*<<< orphan*/  ibmvmc_read_wait ; 
 int /*<<< orphan*/  FUNC6 (struct crq_server_adapter*,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct crq_server_adapter *adapter,
			   struct ibmvmc_crq_msg *crq)
{
	struct ibmvmc_buffer *buffer;
	struct ibmvmc_hmc *hmc;
	unsigned long msg_len;
	u8 hmc_index;
	u8 hmc_session;
	u16 buffer_id;
	unsigned long flags;
	int rc = 0;

	if (!crq)
		return -1;

	/* Hypervisor writes CRQs directly into our memory in big endian */
	FUNC3(adapter->dev, "Recv_msg: msg from HV 0x%016llx 0x%016llx\n",
		FUNC2(*((unsigned long *)crq)),
		FUNC2(*(((unsigned long *)crq) + 1)));

	hmc_session = crq->hmc_session;
	hmc_index = crq->hmc_index;
	buffer_id = FUNC0(crq->var2.buffer_id);
	msg_len = FUNC1(crq->var3.msg_len);

	if (hmc_index > ibmvmc.max_hmc_index) {
		FUNC4(adapter->dev, "Recv_msg: invalid hmc_index = 0x%x\n",
			hmc_index);
		FUNC6(adapter, VMC_MSG_INVALID_HMC_INDEX,
					    hmc_session, hmc_index, buffer_id);
		return -1;
	}

	if (buffer_id >= ibmvmc.max_buffer_pool_size) {
		FUNC4(adapter->dev, "Recv_msg: invalid buffer_id = 0x%x\n",
			buffer_id);
		FUNC6(adapter, VMC_MSG_INVALID_BUFFER_ID,
					    hmc_session, hmc_index, buffer_id);
		return -1;
	}

	hmc = &hmcs[hmc_index];
	FUNC7(&hmc->lock, flags);

	if (hmc->state == ibmhmc_state_free) {
		FUNC4(adapter->dev, "Recv_msg: invalid hmc state = 0x%x\n",
			hmc->state);
		/* HMC connection is not valid (possibly was reset under us). */
		FUNC8(&hmc->lock, flags);
		return -1;
	}

	buffer = &hmc->buffer[buffer_id];

	if (buffer->valid == 0 || buffer->owner == VMC_BUF_OWNER_ALPHA) {
		FUNC4(adapter->dev, "Recv_msg: not valid, or not HV.  0x%x 0x%x\n",
			buffer->valid, buffer->owner);
		FUNC8(&hmc->lock, flags);
		return -1;
	}

	/* RDMA the data into the partition. */
	rc = FUNC5(msg_len,
			 adapter->riobn,
			 buffer->dma_addr_remote,
			 adapter->liobn,
			 buffer->dma_addr_local);

	FUNC3(adapter->dev, "Recv_msg: msg_len = 0x%x, buffer_id = 0x%x, queue_head = 0x%x, hmc_idx = 0x%x\n",
		(unsigned int)msg_len, (unsigned int)buffer_id,
		(unsigned int)hmc->queue_head, (unsigned int)hmc_index);
	buffer->msg_len = msg_len;
	buffer->free = 0;
	buffer->owner = VMC_BUF_OWNER_ALPHA;

	if (rc) {
		FUNC4(adapter->dev, "Failure in recv_msg: h_copy_rdma = 0x%x\n",
			rc);
		FUNC8(&hmc->lock, flags);
		return -1;
	}

	/* Must be locked because read operates on the same data */
	hmc->queue_outbound_msgs[hmc->queue_head] = buffer_id;
	hmc->queue_head++;
	if (hmc->queue_head == ibmvmc_max_buf_pool_size)
		hmc->queue_head = 0;

	if (hmc->queue_head == hmc->queue_tail)
		FUNC4(adapter->dev, "outbound buffer queue wrapped.\n");

	FUNC8(&hmc->lock, flags);

	FUNC9(&ibmvmc_read_wait);

	return 0;
}