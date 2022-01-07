
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vpdma_data {TYPE_1__* pdev; int (* cb ) (TYPE_1__*) ;} ;
struct vpdma_buf {scalar_t__ dma_addr; int addr; } ;
struct firmware {int size; int data; } ;
struct TYPE_3__ {int dev; } ;


 int VPDMA_LIST_ADDR ;
 int VPDMA_LIST_ATTR ;
 int VPDMA_LIST_RDY_MASK ;
 int VPDMA_LIST_RDY_SHFT ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int memcpy (int ,int ,int ) ;
 int msleep_interruptible (int) ;
 scalar_t__ read_field_reg (struct vpdma_data*,int ,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int vpdma_alloc_desc_buf (struct vpdma_buf*,int ) ;
 int vpdma_free_desc_buf (struct vpdma_buf*) ;
 int vpdma_map_desc_buf (struct vpdma_data*,struct vpdma_buf*) ;
 int vpdma_unmap_desc_buf (struct vpdma_data*,struct vpdma_buf*) ;
 int write_reg (struct vpdma_data*,int ,int ) ;

__attribute__((used)) static void vpdma_firmware_cb(const struct firmware *f, void *context)
{
 struct vpdma_data *vpdma = context;
 struct vpdma_buf fw_dma_buf;
 int i, r;

 dev_dbg(&vpdma->pdev->dev, "firmware callback\n");

 if (!f || !f->data) {
  dev_err(&vpdma->pdev->dev, "couldn't get firmware\n");
  return;
 }


 if (read_field_reg(vpdma, VPDMA_LIST_ATTR, VPDMA_LIST_RDY_MASK,
   VPDMA_LIST_RDY_SHFT)) {
  vpdma->cb(vpdma->pdev);
  return;
 }

 r = vpdma_alloc_desc_buf(&fw_dma_buf, f->size);
 if (r) {
  dev_err(&vpdma->pdev->dev,
   "failed to allocate dma buffer for firmware\n");
  goto rel_fw;
 }

 memcpy(fw_dma_buf.addr, f->data, f->size);

 vpdma_map_desc_buf(vpdma, &fw_dma_buf);

 write_reg(vpdma, VPDMA_LIST_ADDR, (u32) fw_dma_buf.dma_addr);

 for (i = 0; i < 100; i++) {
  msleep_interruptible(10);

  if (read_field_reg(vpdma, VPDMA_LIST_ATTR, VPDMA_LIST_RDY_MASK,
    VPDMA_LIST_RDY_SHFT))
   break;
 }

 if (i == 100) {
  dev_err(&vpdma->pdev->dev, "firmware upload failed\n");
  goto free_buf;
 }

 vpdma->cb(vpdma->pdev);

free_buf:
 vpdma_unmap_desc_buf(vpdma, &fw_dma_buf);

 vpdma_free_desc_buf(&fw_dma_buf);
rel_fw:
 release_firmware(f);
}
