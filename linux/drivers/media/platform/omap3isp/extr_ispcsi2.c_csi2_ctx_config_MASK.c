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
typedef  int u32 ;
struct isp_device {int dummy; } ;
struct isp_csi2_device {int /*<<< orphan*/  regs1; } ;
struct isp_csi2_ctx_cfg {int virtual_id; int format_id; int alpha; int data_offset; int ping_addr; int pong_addr; int /*<<< orphan*/  ctxnum; scalar_t__ dpcm_predictor; scalar_t__ dpcm_decompress; scalar_t__ checksum_enabled; scalar_t__ eol_enabled; scalar_t__ eof_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ISPCSI2_CTX_CTRL1_CS_EN ; 
 int ISPCSI2_CTX_CTRL1_EOF_EN ; 
 int ISPCSI2_CTX_CTRL1_EOL_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ISPCSI2_CTX_CTRL2_DPCM_PRED ; 
 int ISPCSI2_CTX_CTRL2_FORMAT_MASK ; 
 int ISPCSI2_CTX_CTRL2_FORMAT_SHIFT ; 
 int ISPCSI2_CTX_CTRL2_USER_DEF_MAP_MASK ; 
 int ISPCSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT ; 
 int ISPCSI2_CTX_CTRL2_VIRTUAL_ID_MASK ; 
 int ISPCSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ISPCSI2_CTX_CTRL3_ALPHA_MASK ; 
 int ISPCSI2_CTX_CTRL3_ALPHA_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ISPCSI2_CTX_DAT_OFST_OFST_MASK ; 
 int ISPCSI2_CTX_DAT_OFST_OFST_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct isp_device *isp,
			    struct isp_csi2_device *csi2,
			    struct isp_csi2_ctx_cfg *ctx)
{
	u32 reg;

	/* Set up CSI2_CTx_CTRL1 */
	reg = FUNC7(isp, csi2->regs1, FUNC0(ctx->ctxnum));

	if (ctx->eof_enabled)
		reg |= ISPCSI2_CTX_CTRL1_EOF_EN;
	else
		reg &= ~ISPCSI2_CTX_CTRL1_EOF_EN;

	if (ctx->eol_enabled)
		reg |= ISPCSI2_CTX_CTRL1_EOL_EN;
	else
		reg &= ~ISPCSI2_CTX_CTRL1_EOL_EN;

	if (ctx->checksum_enabled)
		reg |= ISPCSI2_CTX_CTRL1_CS_EN;
	else
		reg &= ~ISPCSI2_CTX_CTRL1_CS_EN;

	FUNC8(isp, reg, csi2->regs1, FUNC0(ctx->ctxnum));

	/* Set up CSI2_CTx_CTRL2 */
	reg = FUNC7(isp, csi2->regs1, FUNC1(ctx->ctxnum));

	reg &= ~(ISPCSI2_CTX_CTRL2_VIRTUAL_ID_MASK);
	reg |= ctx->virtual_id << ISPCSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT;

	reg &= ~(ISPCSI2_CTX_CTRL2_FORMAT_MASK);
	reg |= ctx->format_id << ISPCSI2_CTX_CTRL2_FORMAT_SHIFT;

	if (ctx->dpcm_decompress) {
		if (ctx->dpcm_predictor)
			reg |= ISPCSI2_CTX_CTRL2_DPCM_PRED;
		else
			reg &= ~ISPCSI2_CTX_CTRL2_DPCM_PRED;
	}

	if (FUNC6(ctx->format_id)) {
		reg &= ~ISPCSI2_CTX_CTRL2_USER_DEF_MAP_MASK;
		reg |= 2 << ISPCSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT;
	}

	FUNC8(isp, reg, csi2->regs1, FUNC1(ctx->ctxnum));

	/* Set up CSI2_CTx_CTRL3 */
	reg = FUNC7(isp, csi2->regs1, FUNC2(ctx->ctxnum));
	reg &= ~(ISPCSI2_CTX_CTRL3_ALPHA_MASK);
	reg |= (ctx->alpha << ISPCSI2_CTX_CTRL3_ALPHA_SHIFT);

	FUNC8(isp, reg, csi2->regs1, FUNC2(ctx->ctxnum));

	/* Set up CSI2_CTx_DAT_OFST */
	reg = FUNC7(isp, csi2->regs1,
			    FUNC3(ctx->ctxnum));
	reg &= ~ISPCSI2_CTX_DAT_OFST_OFST_MASK;
	reg |= ctx->data_offset << ISPCSI2_CTX_DAT_OFST_OFST_SHIFT;
	FUNC8(isp, reg, csi2->regs1,
		       FUNC3(ctx->ctxnum));

	FUNC8(isp, ctx->ping_addr,
		       csi2->regs1, FUNC4(ctx->ctxnum));

	FUNC8(isp, ctx->pong_addr,
		       csi2->regs1, FUNC5(ctx->ctxnum));
}