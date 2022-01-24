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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_get_dir_entries_input {int /*<<< orphan*/  host_dest_addr; int /*<<< orphan*/  member_0; } ;
struct bnxt {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_NVM_GET_DIR_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_nvm_get_dir_entries_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnxt*,struct hwrm_nvm_get_dir_entries_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,unsigned int) ; 
 struct bnxt* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*,int*,int*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, u32 len, u8 *data)
{
	struct bnxt *bp = FUNC8(dev);
	int rc;
	u32 dir_entries;
	u32 entry_length;
	u8 *buf;
	size_t buflen;
	dma_addr_t dma_handle;
	struct hwrm_nvm_get_dir_entries_input req = {0};

	rc = FUNC9(dev, &dir_entries, &entry_length);
	if (rc != 0)
		return rc;

	/* Insert 2 bytes of directory info (count and size of entries) */
	if (len < 2)
		return -EINVAL;

	*data++ = dir_entries;
	*data++ = entry_length;
	len -= 2;
	FUNC6(data, 0xff, len);

	buflen = dir_entries * entry_length;
	buf = FUNC2(&bp->pdev->dev, buflen, &dma_handle,
				 GFP_KERNEL);
	if (!buf) {
		FUNC7(dev, "dma_alloc_coherent failure, length = %u\n",
			   (unsigned)buflen);
		return -ENOMEM;
	}
	FUNC0(bp, &req, HWRM_NVM_GET_DIR_ENTRIES, -1, -1);
	req.host_dest_addr = FUNC1(dma_handle);
	rc = FUNC4(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc == 0)
		FUNC5(data, buf, len > buflen ? buflen : len);
	FUNC3(&bp->pdev->dev, buflen, buf, dma_handle);
	return rc;
}