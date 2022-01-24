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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_read_input {void* len; void* offset; int /*<<< orphan*/  dir_idx; int /*<<< orphan*/  host_dest_addr; int /*<<< orphan*/  member_0; } ;
struct bnxt {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_NVM_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_nvm_read_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bnxt*,struct hwrm_nvm_read_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,unsigned int) ; 
 struct bnxt* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, u32 index, u32 offset,
			       u32 length, u8 *data)
{
	struct bnxt *bp = FUNC9(dev);
	int rc;
	u8 *buf;
	dma_addr_t dma_handle;
	struct hwrm_nvm_read_input req = {0};

	if (!length)
		return -EINVAL;

	buf = FUNC4(&bp->pdev->dev, length, &dma_handle,
				 GFP_KERNEL);
	if (!buf) {
		FUNC8(dev, "dma_alloc_coherent failure, length = %u\n",
			   (unsigned)length);
		return -ENOMEM;
	}
	FUNC0(bp, &req, HWRM_NVM_READ, -1, -1);
	req.host_dest_addr = FUNC3(dma_handle);
	req.dir_idx = FUNC1(index);
	req.offset = FUNC2(offset);
	req.len = FUNC2(length);

	rc = FUNC6(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc == 0)
		FUNC7(data, buf, length);
	FUNC5(&bp->pdev->dev, length, buf, dma_handle);
	return rc;
}