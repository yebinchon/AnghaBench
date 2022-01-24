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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct hwrm_nvm_write_input {int /*<<< orphan*/  host_src_addr; int /*<<< orphan*/  dir_data_length; void* dir_attr; void* dir_ext; void* dir_ordinal; void* dir_type; int /*<<< orphan*/  member_0; } ;
struct bnxt {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLASH_NVRAM_TIMEOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWRM_NVM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_nvm_write_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bnxt*,struct hwrm_nvm_write_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,unsigned int) ; 
 struct bnxt* FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
			    u16 dir_type,
			    u16 dir_ordinal,
			    u16 dir_ext,
			    u16 dir_attr,
			    const u8 *data,
			    size_t data_len)
{
	struct bnxt *bp = FUNC10(dev);
	int rc;
	struct hwrm_nvm_write_input req = {0};
	dma_addr_t dma_handle;
	u8 *kmem;

	FUNC0(bp, &req, HWRM_NVM_WRITE, -1, -1);

	req.dir_type = FUNC2(dir_type);
	req.dir_ordinal = FUNC2(dir_ordinal);
	req.dir_ext = FUNC2(dir_ext);
	req.dir_attr = FUNC2(dir_attr);
	req.dir_data_length = FUNC3(data_len);

	kmem = FUNC5(&bp->pdev->dev, data_len, &dma_handle,
				  GFP_KERNEL);
	if (!kmem) {
		FUNC9(dev, "dma_alloc_coherent failure, length = %u\n",
			   (unsigned)data_len);
		return -ENOMEM;
	}
	FUNC8(kmem, data, data_len);
	req.host_src_addr = FUNC4(dma_handle);

	rc = FUNC7(bp, &req, sizeof(req), FLASH_NVRAM_TIMEOUT);
	FUNC6(&bp->pdev->dev, data_len, kmem, dma_handle);

	if (rc == -EACCES)
		FUNC1(bp);
	return rc;
}