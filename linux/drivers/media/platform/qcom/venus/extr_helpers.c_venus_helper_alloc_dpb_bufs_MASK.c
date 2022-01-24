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
typedef  unsigned int u32 ;
struct venus_inst {unsigned int dpb_buftype; unsigned int output_buf_size; unsigned int output2_buf_size; int /*<<< orphan*/  dpbbufs; int /*<<< orphan*/  dpb_fmt; struct venus_core* core; } ;
struct venus_core {TYPE_1__* res; struct device* dev; } ;
struct intbuf {unsigned int type; unsigned int size; int attrs; int /*<<< orphan*/  list; int /*<<< orphan*/  va; int /*<<< orphan*/  da; } ;
struct hfi_buffer_requirements {int dummy; } ;
struct device {int dummy; } ;
typedef  enum hfi_version { ____Placeholder_hfi_version } hfi_version ;
struct TYPE_2__ {int hfi_version; } ;

/* Variables and functions */
 int DMA_ATTR_NO_KERNEL_MAPPING ; 
 int DMA_ATTR_WRITE_COMBINE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HFI_BUFFER_OUTPUT ; 
 scalar_t__ HFI_BUFFER_OUTPUT2 ; 
 unsigned int FUNC0 (struct hfi_buffer_requirements*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intbuf*) ; 
 struct intbuf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_inst*) ; 
 int FUNC6 (struct venus_inst*,unsigned int,struct hfi_buffer_requirements*) ; 

int FUNC7(struct venus_inst *inst)
{
	struct venus_core *core = inst->core;
	struct device *dev = core->dev;
	enum hfi_version ver = core->res->hfi_version;
	struct hfi_buffer_requirements bufreq;
	u32 buftype = inst->dpb_buftype;
	unsigned int dpb_size = 0;
	struct intbuf *buf;
	unsigned int i;
	u32 count;
	int ret;

	/* no need to allocate dpb buffers */
	if (!inst->dpb_fmt)
		return 0;

	if (inst->dpb_buftype == HFI_BUFFER_OUTPUT)
		dpb_size = inst->output_buf_size;
	else if (inst->dpb_buftype == HFI_BUFFER_OUTPUT2)
		dpb_size = inst->output2_buf_size;

	if (!dpb_size)
		return 0;

	ret = FUNC6(inst, buftype, &bufreq);
	if (ret)
		return ret;

	count = FUNC0(&bufreq, ver);

	for (i = 0; i < count; i++) {
		buf = FUNC3(sizeof(*buf), GFP_KERNEL);
		if (!buf) {
			ret = -ENOMEM;
			goto fail;
		}

		buf->type = buftype;
		buf->size = dpb_size;
		buf->attrs = DMA_ATTR_WRITE_COMBINE |
			     DMA_ATTR_NO_KERNEL_MAPPING;
		buf->va = FUNC1(dev, buf->size, &buf->da, GFP_KERNEL,
					  buf->attrs);
		if (!buf->va) {
			FUNC2(buf);
			ret = -ENOMEM;
			goto fail;
		}

		FUNC4(&buf->list, &inst->dpbbufs);
	}

	return 0;

fail:
	FUNC5(inst);
	return ret;
}