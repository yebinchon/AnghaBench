
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int internalbufs; struct venus_core* core; } ;
struct venus_core {struct device* dev; } ;
struct intbuf {int attrs; int da; int va; scalar_t__ size; int list; int type; } ;
struct hfi_buffer_requirements {unsigned int count_actual; scalar_t__ size; int type; } ;
struct hfi_buffer_desc {int num_buffers; int device_addr; int buffer_type; scalar_t__ buffer_size; } ;
struct device {int dummy; } ;
typedef int bd ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_ATTR_WRITE_COMBINE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dma_alloc_attrs (struct device*,scalar_t__,int *,int ,int) ;
 int dma_free_attrs (struct device*,scalar_t__,int ,int ,int) ;
 int hfi_session_set_buffers (struct venus_inst*,struct hfi_buffer_desc*) ;
 int kfree (struct intbuf*) ;
 struct intbuf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct hfi_buffer_desc*,int ,int) ;
 int venus_helper_get_bufreq (struct venus_inst*,int ,struct hfi_buffer_requirements*) ;

__attribute__((used)) static int intbufs_set_buffer(struct venus_inst *inst, u32 type)
{
 struct venus_core *core = inst->core;
 struct device *dev = core->dev;
 struct hfi_buffer_requirements bufreq;
 struct hfi_buffer_desc bd;
 struct intbuf *buf;
 unsigned int i;
 int ret;

 ret = venus_helper_get_bufreq(inst, type, &bufreq);
 if (ret)
  return 0;

 if (!bufreq.size)
  return 0;

 for (i = 0; i < bufreq.count_actual; i++) {
  buf = kzalloc(sizeof(*buf), GFP_KERNEL);
  if (!buf) {
   ret = -ENOMEM;
   goto fail;
  }

  buf->type = bufreq.type;
  buf->size = bufreq.size;
  buf->attrs = DMA_ATTR_WRITE_COMBINE |
        DMA_ATTR_NO_KERNEL_MAPPING;
  buf->va = dma_alloc_attrs(dev, buf->size, &buf->da, GFP_KERNEL,
       buf->attrs);
  if (!buf->va) {
   ret = -ENOMEM;
   goto fail;
  }

  memset(&bd, 0, sizeof(bd));
  bd.buffer_size = buf->size;
  bd.buffer_type = buf->type;
  bd.num_buffers = 1;
  bd.device_addr = buf->da;

  ret = hfi_session_set_buffers(inst, &bd);
  if (ret) {
   dev_err(dev, "set session buffers failed\n");
   goto dma_free;
  }

  list_add_tail(&buf->list, &inst->internalbufs);
 }

 return 0;

dma_free:
 dma_free_attrs(dev, buf->size, buf->va, buf->da, buf->attrs);
fail:
 kfree(buf);
 return ret;
}
