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
struct s5p_mfc_dev {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/  inst_no; int /*<<< orphan*/  mfc_ops; } ;
struct s5p_mfc_ctx {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/  inst_no; int /*<<< orphan*/  mfc_ops; } ;

/* Variables and functions */
 scalar_t__ MFCINST_DECODER ; 
 int /*<<< orphan*/  MFCINST_FREE ; 
 int /*<<< orphan*/  MFCINST_RETURN_INST ; 
 int /*<<< orphan*/  MFC_NO_INSTANCE_SET ; 
 int /*<<< orphan*/  S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  release_codec_buffers ; 
 int /*<<< orphan*/  release_dec_desc_buffer ; 
 int /*<<< orphan*/  release_instance_buffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC2 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  try_run ; 

void FUNC4(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx)
{
	ctx->state = MFCINST_RETURN_INST;
	FUNC3(ctx);
	FUNC1(dev->mfc_ops, try_run, dev);
	/* Wait until instance is returned or timeout occurred */
	if (FUNC2(ctx,
				S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET, 0))
		FUNC0("Err returning instance\n");

	/* Free resources */
	FUNC1(dev->mfc_ops, release_codec_buffers, ctx);
	FUNC1(dev->mfc_ops, release_instance_buffer, ctx);
	if (ctx->type == MFCINST_DECODER)
		FUNC1(dev->mfc_ops, release_dec_desc_buffer, ctx);

	ctx->inst_no = MFC_NO_INSTANCE_SET;
	ctx->state = MFCINST_FREE;
}