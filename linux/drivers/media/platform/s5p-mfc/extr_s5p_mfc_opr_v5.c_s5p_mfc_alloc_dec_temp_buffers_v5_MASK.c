#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s5p_mfc_dev {TYPE_2__* variant; } ;
struct TYPE_6__ {int dma; int /*<<< orphan*/  size; int /*<<< orphan*/  virt; } ;
struct s5p_mfc_ctx {TYPE_3__ dsc; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size_v5 {int /*<<< orphan*/  dsc; } ;
struct TYPE_5__ {TYPE_1__* buf_size; } ;
struct TYPE_4__ {struct s5p_mfc_buf_size_v5* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_L_CTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MFC_BANK1_ALIGN_ORDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	struct s5p_mfc_buf_size_v5 *buf_size = dev->variant->buf_size->priv;
	int ret;

	ctx->dsc.size = buf_size->dsc;
	ret =  FUNC3(dev, BANK_L_CTX, &ctx->dsc);
	if (ret) {
		FUNC2("Failed to allocate temporary buffer\n");
		return ret;
	}

	FUNC0(ctx->dsc.dma & ((1 << MFC_BANK1_ALIGN_ORDER) - 1));
	FUNC1(ctx->dsc.virt, 0, ctx->dsc.size);
	FUNC4();
	return 0;
}