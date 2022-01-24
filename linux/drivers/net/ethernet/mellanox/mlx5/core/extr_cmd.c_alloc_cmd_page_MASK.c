#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_core_dev {struct device* device; } ;
struct mlx5_cmd {int alloc_size; int /*<<< orphan*/  alloc_dma; int /*<<< orphan*/  dma; void* cmd_alloc_buf; void* cmd_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_ADAPTER_PAGE_SIZE ; 
 void* FUNC1 (void*,int) ; 
 void* FUNC2 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *dev, struct mlx5_cmd *cmd)
{
	struct device *ddev = dev->device;

	cmd->cmd_alloc_buf = FUNC2(ddev, MLX5_ADAPTER_PAGE_SIZE,
						&cmd->alloc_dma, GFP_KERNEL);
	if (!cmd->cmd_alloc_buf)
		return -ENOMEM;

	/* make sure it is aligned to 4K */
	if (!((uintptr_t)cmd->cmd_alloc_buf & (MLX5_ADAPTER_PAGE_SIZE - 1))) {
		cmd->cmd_buf = cmd->cmd_alloc_buf;
		cmd->dma = cmd->alloc_dma;
		cmd->alloc_size = MLX5_ADAPTER_PAGE_SIZE;
		return 0;
	}

	FUNC3(ddev, MLX5_ADAPTER_PAGE_SIZE, cmd->cmd_alloc_buf,
			  cmd->alloc_dma);
	cmd->cmd_alloc_buf = FUNC2(ddev,
						2 * MLX5_ADAPTER_PAGE_SIZE - 1,
						&cmd->alloc_dma, GFP_KERNEL);
	if (!cmd->cmd_alloc_buf)
		return -ENOMEM;

	cmd->cmd_buf = FUNC1(cmd->cmd_alloc_buf, MLX5_ADAPTER_PAGE_SIZE);
	cmd->dma = FUNC0(cmd->alloc_dma, MLX5_ADAPTER_PAGE_SIZE);
	cmd->alloc_size = 2 * MLX5_ADAPTER_PAGE_SIZE - 1;
	return 0;
}