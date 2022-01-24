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
struct venc_h264_inst {int /*<<< orphan*/  vpu_inst; } ;
struct mtk_vcodec_mem {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  H264_BS_MODE_PPS ; 
 unsigned int MTK_VENC_IRQ_STATUS_PPS ; 
 int /*<<< orphan*/  VENC_PIC_BITSTREAM_BYTE_CNT ; 
 unsigned int FUNC0 (struct venc_h264_inst*) ; 
 unsigned int FUNC1 (struct venc_h264_inst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct venc_h264_inst*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct venc_h264_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct venc_h264_inst*,char*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_vcodec_mem*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct venc_h264_inst *inst,
			   struct mtk_vcodec_mem *bs_buf,
			   unsigned int *bs_size)
{
	int ret = 0;
	unsigned int irq_status;

	FUNC3(inst);

	ret = FUNC5(&inst->vpu_inst, H264_BS_MODE_PPS, NULL,
			     bs_buf, bs_size);
	if (ret)
		return ret;

	irq_status = FUNC0(inst);
	if (irq_status != MTK_VENC_IRQ_STATUS_PPS) {
		FUNC4(inst, "expect irq status %d",
			       MTK_VENC_IRQ_STATUS_PPS);
		return -EINVAL;
	}

	*bs_size = FUNC1(inst, VENC_PIC_BITSTREAM_BYTE_CNT);
	FUNC2(inst, "bs size %d <-", *bs_size);

	return ret;
}