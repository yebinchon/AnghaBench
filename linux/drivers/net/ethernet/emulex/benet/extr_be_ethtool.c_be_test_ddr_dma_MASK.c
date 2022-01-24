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
typedef  int u64 ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; int /*<<< orphan*/  va; } ;
struct be_cmd_req_ddrdma_test {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct be_adapter*,int const,int,struct be_dma_mem*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct be_adapter *adapter)
{
	int ret, i;
	struct be_dma_mem ddrdma_cmd;
	static const u64 pattern[2] = {
		0x5a5a5a5a5a5a5a5aULL, 0xa5a5a5a5a5a5a5a5ULL
	};

	ddrdma_cmd.size = sizeof(struct be_cmd_req_ddrdma_test);
	ddrdma_cmd.va = FUNC2(&adapter->pdev->dev,
					   ddrdma_cmd.size, &ddrdma_cmd.dma,
					   GFP_KERNEL);
	if (!ddrdma_cmd.va)
		return -ENOMEM;

	for (i = 0; i < 2; i++) {
		ret = FUNC0(adapter, pattern[i],
					  4096, &ddrdma_cmd);
		if (ret != 0)
			goto err;
	}

err:
	FUNC3(&adapter->pdev->dev, ddrdma_cmd.size, ddrdma_cmd.va,
			  ddrdma_cmd.dma);
	return FUNC1(ret);
}