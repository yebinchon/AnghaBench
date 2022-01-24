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
struct TYPE_6__ {int /*<<< orphan*/  code; } ;
struct TYPE_7__ {TYPE_2__ rc; } ;
union ibmvnic_crq {TYPE_3__ get_vpd_rsp; } ;
typedef  char u8 ;
struct ibmvnic_adapter {char* fw_version; int /*<<< orphan*/  fw_done; TYPE_4__* vpd; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int len; unsigned char* buff; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned char* FUNC6 (unsigned char*,char*,int) ; 

__attribute__((used)) static void FUNC7(union ibmvnic_crq *crq,
			   struct ibmvnic_adapter *adapter)
{
	struct device *dev = &adapter->vdev->dev;
	unsigned char *substr = NULL;
	u8 fw_level_len = 0;

	FUNC4(adapter->fw_version, 0, 32);

	FUNC3(dev, adapter->vpd->dma_addr, adapter->vpd->len,
			 DMA_FROM_DEVICE);

	if (crq->get_vpd_rsp.rc.code) {
		FUNC1(dev, "Error retrieving VPD from device, rc=%x\n",
			crq->get_vpd_rsp.rc.code);
		goto complete;
	}

	/* get the position of the firmware version info
	 * located after the ASCII 'RM' substring in the buffer
	 */
	substr = FUNC6(adapter->vpd->buff, "RM", adapter->vpd->len);
	if (!substr) {
		FUNC2(dev, "Warning - No FW level has been provided in the VPD buffer by the VIOS Server\n");
		goto complete;
	}

	/* get length of firmware level ASCII substring */
	if ((substr + 2) < (adapter->vpd->buff + adapter->vpd->len)) {
		fw_level_len = *(substr + 2);
	} else {
		FUNC2(dev, "Length of FW substr extrapolated VDP buff\n");
		goto complete;
	}

	/* copy firmware version string from vpd into adapter */
	if ((substr + 3 + fw_level_len) <
	    (adapter->vpd->buff + adapter->vpd->len)) {
		FUNC5((char *)adapter->fw_version, substr + 3, fw_level_len);
	} else {
		FUNC2(dev, "FW substr extrapolated VPD buff\n");
	}

complete:
	if (adapter->fw_version[0] == '\0')
		FUNC5((char *)adapter->fw_version, "N/A", 3 * sizeof(char));
	FUNC0(&adapter->fw_done);
}