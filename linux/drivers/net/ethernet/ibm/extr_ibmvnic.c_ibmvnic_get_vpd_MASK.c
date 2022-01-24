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
struct TYPE_7__ {void* len; void* ioba; int /*<<< orphan*/  cmd; void* first; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmd; void* first; } ;
union ibmvnic_crq {TYPE_3__ get_vpd; TYPE_2__ get_vpd_size; } ;
typedef  int /*<<< orphan*/  u32 ;
struct ibmvnic_adapter {int /*<<< orphan*/  fw_done; TYPE_4__* vpd; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int len; int /*<<< orphan*/ * buff; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GET_VPD ; 
 int /*<<< orphan*/  GET_VPD_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IBMVNIC_CRQ_CMD ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ibmvnic_adapter *adapter)
{
	struct device *dev = &adapter->vdev->dev;
	union ibmvnic_crq crq;
	int len = 0;
	int rc;

	if (adapter->vpd->buff)
		len = adapter->vpd->len;

	FUNC5(&adapter->fw_done);
	crq.get_vpd_size.first = IBMVNIC_CRQ_CMD;
	crq.get_vpd_size.cmd = GET_VPD_SIZE;
	rc = FUNC4(adapter, &crq);
	if (rc)
		return rc;
	FUNC10(&adapter->fw_done);

	if (!adapter->vpd->len)
		return -ENODATA;

	if (!adapter->vpd->buff)
		adapter->vpd->buff = FUNC8(adapter->vpd->len, GFP_KERNEL);
	else if (adapter->vpd->len != len)
		adapter->vpd->buff =
			FUNC7(adapter->vpd->buff,
				 adapter->vpd->len, GFP_KERNEL);

	if (!adapter->vpd->buff) {
		FUNC1(dev, "Could allocate VPD buffer\n");
		return -ENOMEM;
	}

	adapter->vpd->dma_addr =
		FUNC2(dev, adapter->vpd->buff, adapter->vpd->len,
			       DMA_FROM_DEVICE);
	if (FUNC3(dev, adapter->vpd->dma_addr)) {
		FUNC1(dev, "Could not map VPD buffer\n");
		FUNC6(adapter->vpd->buff);
		adapter->vpd->buff = NULL;
		return -ENOMEM;
	}

	FUNC9(&adapter->fw_done);
	crq.get_vpd.first = IBMVNIC_CRQ_CMD;
	crq.get_vpd.cmd = GET_VPD;
	crq.get_vpd.ioba = FUNC0(adapter->vpd->dma_addr);
	crq.get_vpd.len = FUNC0((u32)adapter->vpd->len);
	rc = FUNC4(adapter, &crq);
	if (rc) {
		FUNC6(adapter->vpd->buff);
		adapter->vpd->buff = NULL;
		return rc;
	}
	FUNC10(&adapter->fw_done);

	return 0;
}