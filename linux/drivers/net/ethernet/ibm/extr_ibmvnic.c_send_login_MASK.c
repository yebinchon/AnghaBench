#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* len; void* ioba; int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_4__ login; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct vnic_login_client_data {int dummy; } ;
struct ibmvnic_login_rsp_buffer {void* client_data_len; void* client_data_offset; void* login_rsp_len; void* login_rsp_ioba; void* off_rxcomp_subcrqs; void* num_rxcomp_subcrqs; void* off_txcomp_subcrqs; void* num_txcomp_subcrqs; void* version; void* len; } ;
struct ibmvnic_login_buffer {void* client_data_len; void* client_data_offset; void* login_rsp_len; void* login_rsp_ioba; void* off_rxcomp_subcrqs; void* num_rxcomp_subcrqs; void* off_txcomp_subcrqs; void* num_txcomp_subcrqs; void* version; void* len; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; size_t login_buf_token; size_t login_buf_sz; size_t login_rsp_buf_token; size_t login_rsp_buf_sz; struct ibmvnic_login_rsp_buffer* login_buf; int /*<<< orphan*/  netdev; TYPE_3__** rx_scrq; TYPE_2__** tx_scrq; struct ibmvnic_login_rsp_buffer* login_rsp_buf; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
typedef  size_t dma_addr_t ;
typedef  int /*<<< orphan*/  crq ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_7__ {int /*<<< orphan*/  crq_num; } ;
struct TYPE_6__ {int /*<<< orphan*/  crq_num; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IBMVNIC_CRQ_CMD ; 
 int IBMVNIC_TX_DESC_VERSIONS ; 
 size_t INITIAL_VERSION_LB ; 
 int /*<<< orphan*/  LOGIN ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 size_t FUNC3 (struct device*,struct ibmvnic_login_rsp_buffer*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvnic_login_rsp_buffer*) ; 
 struct ibmvnic_login_rsp_buffer* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 struct ibmvnic_login_rsp_buffer* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct ibmvnic_adapter*,struct vnic_login_client_data*) ; 
 int FUNC15 (struct ibmvnic_adapter*) ; 

__attribute__((used)) static int FUNC16(struct ibmvnic_adapter *adapter)
{
	struct ibmvnic_login_rsp_buffer *login_rsp_buffer;
	struct ibmvnic_login_buffer *login_buffer;
	struct device *dev = &adapter->vdev->dev;
	dma_addr_t rsp_buffer_token;
	dma_addr_t buffer_token;
	size_t rsp_buffer_size;
	union ibmvnic_crq crq;
	size_t buffer_size;
	__be64 *tx_list_p;
	__be64 *rx_list_p;
	int client_data_len;
	struct vnic_login_client_data *vlcd;
	int i;

	if (!adapter->tx_scrq || !adapter->rx_scrq) {
		FUNC12(adapter->netdev,
			   "RX or TX queues are not allocated, device login failed\n");
		return -1;
	}

	FUNC13(adapter);
	client_data_len = FUNC15(adapter);

	buffer_size =
	    sizeof(struct ibmvnic_login_buffer) +
	    sizeof(u64) * (adapter->req_tx_queues + adapter->req_rx_queues) +
	    client_data_len;

	login_buffer = FUNC9(buffer_size, GFP_ATOMIC);
	if (!login_buffer)
		goto buf_alloc_failed;

	buffer_token = FUNC3(dev, login_buffer, buffer_size,
				      DMA_TO_DEVICE);
	if (FUNC4(dev, buffer_token)) {
		FUNC2(dev, "Couldn't map login buffer\n");
		goto buf_map_failed;
	}

	rsp_buffer_size = sizeof(struct ibmvnic_login_rsp_buffer) +
			  sizeof(u64) * adapter->req_tx_queues +
			  sizeof(u64) * adapter->req_rx_queues +
			  sizeof(u64) * adapter->req_rx_queues +
			  sizeof(u8) * IBMVNIC_TX_DESC_VERSIONS;

	login_rsp_buffer = FUNC8(rsp_buffer_size, GFP_ATOMIC);
	if (!login_rsp_buffer)
		goto buf_rsp_alloc_failed;

	rsp_buffer_token = FUNC3(dev, login_rsp_buffer,
					  rsp_buffer_size, DMA_FROM_DEVICE);
	if (FUNC4(dev, rsp_buffer_token)) {
		FUNC2(dev, "Couldn't map login rsp buffer\n");
		goto buf_rsp_map_failed;
	}

	adapter->login_buf = login_buffer;
	adapter->login_buf_token = buffer_token;
	adapter->login_buf_sz = buffer_size;
	adapter->login_rsp_buf = login_rsp_buffer;
	adapter->login_rsp_buf_token = rsp_buffer_token;
	adapter->login_rsp_buf_sz = rsp_buffer_size;

	login_buffer->len = FUNC0(buffer_size);
	login_buffer->version = FUNC0(INITIAL_VERSION_LB);
	login_buffer->num_txcomp_subcrqs = FUNC0(adapter->req_tx_queues);
	login_buffer->off_txcomp_subcrqs =
	    FUNC0(sizeof(struct ibmvnic_login_buffer));
	login_buffer->num_rxcomp_subcrqs = FUNC0(adapter->req_rx_queues);
	login_buffer->off_rxcomp_subcrqs =
	    FUNC0(sizeof(struct ibmvnic_login_buffer) +
			sizeof(u64) * adapter->req_tx_queues);
	login_buffer->login_rsp_ioba = FUNC0(rsp_buffer_token);
	login_buffer->login_rsp_len = FUNC0(rsp_buffer_size);

	tx_list_p = (__be64 *)((char *)login_buffer +
				      sizeof(struct ibmvnic_login_buffer));
	rx_list_p = (__be64 *)((char *)login_buffer +
				      sizeof(struct ibmvnic_login_buffer) +
				      sizeof(u64) * adapter->req_tx_queues);

	for (i = 0; i < adapter->req_tx_queues; i++) {
		if (adapter->tx_scrq[i]) {
			tx_list_p[i] = FUNC1(adapter->tx_scrq[i]->
						   crq_num);
		}
	}

	for (i = 0; i < adapter->req_rx_queues; i++) {
		if (adapter->rx_scrq[i]) {
			rx_list_p[i] = FUNC1(adapter->rx_scrq[i]->
						   crq_num);
		}
	}

	/* Insert vNIC login client data */
	vlcd = (struct vnic_login_client_data *)
		((char *)rx_list_p + (sizeof(u64) * adapter->req_rx_queues));
	login_buffer->client_data_offset =
			FUNC0((char *)vlcd - (char *)login_buffer);
	login_buffer->client_data_len = FUNC0(client_data_len);

	FUNC14(adapter, vlcd);

	FUNC11(adapter->netdev, "Login Buffer:\n");
	for (i = 0; i < (adapter->login_buf_sz - 1) / 8 + 1; i++) {
		FUNC11(adapter->netdev, "%016lx\n",
			   ((unsigned long int *)(adapter->login_buf))[i]);
	}

	FUNC10(&crq, 0, sizeof(crq));
	crq.login.first = IBMVNIC_CRQ_CMD;
	crq.login.cmd = LOGIN;
	crq.login.ioba = FUNC0(buffer_token);
	crq.login.len = FUNC0(buffer_size);
	FUNC6(adapter, &crq);

	return 0;

buf_rsp_map_failed:
	FUNC7(login_rsp_buffer);
buf_rsp_alloc_failed:
	FUNC5(dev, buffer_token, buffer_size, DMA_TO_DEVICE);
buf_map_failed:
	FUNC7(login_buffer);
buf_alloc_failed:
	return -1;
}