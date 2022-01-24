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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ibmvmc_crq_msg {size_t hmc_session; size_t hmc_index; } ;
struct ibmvmc_buffer {int /*<<< orphan*/  dma_addr_local; int /*<<< orphan*/  real_addr_local; scalar_t__ valid; int /*<<< orphan*/  id; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {size_t max_hmc_index; int /*<<< orphan*/  max_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMC_INVALID_BUFFER_ID ; 
 int /*<<< orphan*/  VMC_MSG_INVALID_HMC_INDEX ; 
 int /*<<< orphan*/  VMC_MSG_NO_BUFFER ; 
 int /*<<< orphan*/  VMC_MSG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* hmcs ; 
 TYPE_1__ ibmvmc ; 
 struct ibmvmc_buffer* FUNC4 (struct crq_server_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct crq_server_adapter*,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvmc_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct crq_server_adapter *adapter,
			     struct ibmvmc_crq_msg *crq)
{
	struct ibmvmc_buffer *buffer;
	u8 hmc_index;
	u8 hmc_session;
	u16 buffer_id = 0;
	unsigned long flags;
	int rc = 0;

	if (!crq)
		return -1;

	hmc_session = crq->hmc_session;
	hmc_index = crq->hmc_index;

	if (hmc_index > ibmvmc.max_hmc_index) {
		FUNC2(adapter->dev, "rem_buffer: invalid hmc_index = 0x%x\n",
			 hmc_index);
		FUNC5(adapter, VMC_MSG_INVALID_HMC_INDEX,
					    hmc_session, hmc_index, buffer_id);
		return -1;
	}

	FUNC7(&hmcs[hmc_index].lock, flags);
	buffer = FUNC4(adapter, hmc_index);
	if (!buffer) {
		FUNC1(adapter->dev, "rem_buffer: no buffer to remove\n");
		FUNC8(&hmcs[hmc_index].lock, flags);
		FUNC5(adapter, VMC_MSG_NO_BUFFER,
					    hmc_session, hmc_index,
					    VMC_INVALID_BUFFER_ID);
		return -1;
	}

	buffer_id = buffer->id;

	if (buffer->valid)
		FUNC3(FUNC9(adapter->dev),
				ibmvmc.max_mtu,
				buffer->real_addr_local,
				buffer->dma_addr_local);

	FUNC6(buffer, 0, sizeof(struct ibmvmc_buffer));
	FUNC8(&hmcs[hmc_index].lock, flags);

	FUNC0(adapter->dev, "rem_buffer: removed buffer 0x%x.\n", buffer_id);
	FUNC5(adapter, VMC_MSG_SUCCESS, hmc_session,
				    hmc_index, buffer_id);

	return rc;
}