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
struct vio_dev {int dummy; } ;
struct ibmvmc_hmc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * queue_outbound_msgs; struct ibmvmc_buffer* buffer; scalar_t__ queue_tail; scalar_t__ queue_head; int /*<<< orphan*/  state; scalar_t__ index; struct crq_server_adapter* adapter; struct ibmvmc_file_session* file_session; } ;
struct ibmvmc_file_session {scalar_t__ valid; } ;
struct ibmvmc_buffer {int /*<<< orphan*/  dma_addr_local; int /*<<< orphan*/  real_addr_local; scalar_t__ valid; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_mtu; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VMC_INVALID_BUFFER_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmhmc_state_free ; 
 TYPE_1__ ibmvmc ; 
 unsigned long ibmvmc_max_buf_pool_size ; 
 int /*<<< orphan*/  ibmvmc_read_wait ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvmc_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vio_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ibmvmc_hmc *hmc, bool release_readers)
{
	struct ibmvmc_buffer *buffer;
	struct crq_server_adapter *adapter;
	struct vio_dev *vdev;
	unsigned long i;
	unsigned long flags;

	if (!hmc || !hmc->adapter)
		return -EIO;

	if (release_readers) {
		if (hmc->file_session) {
			struct ibmvmc_file_session *session = hmc->file_session;

			session->valid = 0;
			FUNC6(&ibmvmc_read_wait);
		}
	}

	adapter = hmc->adapter;
	vdev = FUNC5(adapter->dev);

	FUNC3(&hmc->lock, flags);
	hmc->index = 0;
	hmc->state = ibmhmc_state_free;
	hmc->queue_head = 0;
	hmc->queue_tail = 0;
	buffer = hmc->buffer;
	for (i = 0; i < ibmvmc_max_buf_pool_size; i++) {
		if (buffer[i].valid) {
			FUNC1(vdev,
					ibmvmc.max_mtu,
					buffer[i].real_addr_local,
					buffer[i].dma_addr_local);
			FUNC0(adapter->dev, "Forgot buffer id 0x%lx\n", i);
		}
		FUNC2(&buffer[i], 0, sizeof(struct ibmvmc_buffer));

		hmc->queue_outbound_msgs[i] = VMC_INVALID_BUFFER_ID;
	}

	FUNC4(&hmc->lock, flags);

	return 0;
}