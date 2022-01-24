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
struct s5p_mfc_ctx {unsigned int img_width; void* chroma_size; void* luma_size; int /*<<< orphan*/  dev; void* buf_width; int /*<<< orphan*/  img_height; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ MFC_CHROMA_PAD_BYTES_V7 ; 
 scalar_t__ MFC_LUMA_PAD_BYTES_V7 ; 
 int S5P_FIMV_NV12M_HALIGN_V6 ; 

__attribute__((used)) static void FUNC4(struct s5p_mfc_ctx *ctx)
{
	unsigned int mb_width, mb_height;

	mb_width = FUNC3(ctx->img_width);
	mb_height = FUNC2(ctx->img_height);

	ctx->buf_width = FUNC0(ctx->img_width, S5P_FIMV_NV12M_HALIGN_V6);
	ctx->luma_size = FUNC0((mb_width * mb_height) * 256, 256);
	ctx->chroma_size = FUNC0((mb_width * mb_height) * 128, 256);

	/* MFCv7 needs pad bytes for Luma and Chroma */
	if (FUNC1(ctx->dev)) {
		ctx->luma_size += MFC_LUMA_PAD_BYTES_V7;
		ctx->chroma_size += MFC_CHROMA_PAD_BYTES_V7;
	}
}