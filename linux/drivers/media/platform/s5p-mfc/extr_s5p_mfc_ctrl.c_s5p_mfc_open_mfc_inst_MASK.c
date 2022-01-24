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
struct s5p_mfc_dev {scalar_t__ type; int /*<<< orphan*/  mfc_ops; int /*<<< orphan*/  inst_no; } ;
struct s5p_mfc_ctx {scalar_t__ type; int /*<<< orphan*/  mfc_ops; int /*<<< orphan*/  inst_no; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MFCINST_DECODER ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET ; 
 int /*<<< orphan*/  alloc_dec_temp_buffers ; 
 int /*<<< orphan*/  alloc_instance_buffer ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  release_dec_desc_buffer ; 
 int /*<<< orphan*/  release_instance_buffer ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC3 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  try_run ; 

int FUNC5(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx)
{
	int ret = 0;

	ret = FUNC2(dev->mfc_ops, alloc_instance_buffer, ctx);
	if (ret) {
		FUNC1("Failed allocating instance buffer\n");
		goto err;
	}

	if (ctx->type == MFCINST_DECODER) {
		ret = FUNC2(dev->mfc_ops,
					alloc_dec_temp_buffers, ctx);
		if (ret) {
			FUNC1("Failed allocating temporary buffers\n");
			goto err_free_inst_buf;
		}
	}

	FUNC4(ctx);
	FUNC2(dev->mfc_ops, try_run, dev);
	if (FUNC3(ctx,
		S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET, 0)) {
		/* Error or timeout */
		FUNC1("Error getting instance from hardware\n");
		ret = -EIO;
		goto err_free_desc_buf;
	}

	FUNC0(2, "Got instance number: %d\n", ctx->inst_no);
	return ret;

err_free_desc_buf:
	if (ctx->type == MFCINST_DECODER)
		FUNC2(dev->mfc_ops, release_dec_desc_buffer, ctx);
err_free_inst_buf:
	FUNC2(dev->mfc_ops, release_instance_buffer, ctx);
err:
	return ret;
}