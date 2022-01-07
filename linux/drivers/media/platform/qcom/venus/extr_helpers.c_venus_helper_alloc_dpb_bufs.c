
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct venus_inst {unsigned int dpb_buftype; unsigned int output_buf_size; unsigned int output2_buf_size; int dpbbufs; int dpb_fmt; struct venus_core* core; } ;
struct venus_core {TYPE_1__* res; struct device* dev; } ;
struct intbuf {unsigned int type; unsigned int size; int attrs; int list; int va; int da; } ;
struct hfi_buffer_requirements {int dummy; } ;
struct device {int dummy; } ;
typedef enum hfi_version { ____Placeholder_hfi_version } hfi_version ;
struct TYPE_2__ {int hfi_version; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_ATTR_WRITE_COMBINE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HFI_BUFFER_OUTPUT ;
 scalar_t__ HFI_BUFFER_OUTPUT2 ;
 unsigned int HFI_BUFREQ_COUNT_MIN (struct hfi_buffer_requirements*,int) ;
 int dma_alloc_attrs (struct device*,unsigned int,int *,int ,int) ;
 int kfree (struct intbuf*) ;
 struct intbuf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int venus_helper_free_dpb_bufs (struct venus_inst*) ;
 int venus_helper_get_bufreq (struct venus_inst*,unsigned int,struct hfi_buffer_requirements*) ;

int venus_helper_alloc_dpb_bufs(struct venus_inst *inst)
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


 if (!inst->dpb_fmt)
  return 0;

 if (inst->dpb_buftype == HFI_BUFFER_OUTPUT)
  dpb_size = inst->output_buf_size;
 else if (inst->dpb_buftype == HFI_BUFFER_OUTPUT2)
  dpb_size = inst->output2_buf_size;

 if (!dpb_size)
  return 0;

 ret = venus_helper_get_bufreq(inst, buftype, &bufreq);
 if (ret)
  return ret;

 count = HFI_BUFREQ_COUNT_MIN(&bufreq, ver);

 for (i = 0; i < count; i++) {
  buf = kzalloc(sizeof(*buf), GFP_KERNEL);
  if (!buf) {
   ret = -ENOMEM;
   goto fail;
  }

  buf->type = buftype;
  buf->size = dpb_size;
  buf->attrs = DMA_ATTR_WRITE_COMBINE |
        DMA_ATTR_NO_KERNEL_MAPPING;
  buf->va = dma_alloc_attrs(dev, buf->size, &buf->da, GFP_KERNEL,
       buf->attrs);
  if (!buf->va) {
   kfree(buf);
   ret = -ENOMEM;
   goto fail;
  }

  list_add_tail(&buf->list, &inst->dpbbufs);
 }

 return 0;

fail:
 venus_helper_free_dpb_bufs(inst);
 return ret;
}
