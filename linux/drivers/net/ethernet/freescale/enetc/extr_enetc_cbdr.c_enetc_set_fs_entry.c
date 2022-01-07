
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_si {TYPE_1__* pdev; } ;
struct enetc_cmd_rfse {int dummy; } ;
struct enetc_cbd {int cls; void** addr; void** opt; void* length; void* index; scalar_t__ cmd; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ALIGN (int ,scalar_t__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* PTR_ALIGN (void*,scalar_t__) ;
 scalar_t__ RFSE_ALIGN ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*,...) ;
 void* dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int dma_free_coherent (int *,scalar_t__,void*,int ) ;
 int enetc_send_cmd (struct enetc_si*,struct enetc_cbd*) ;
 int lower_32_bits (int ) ;
 int memcpy (void*,struct enetc_cmd_rfse*,int) ;
 int upper_32_bits (int ) ;

int enetc_set_fs_entry(struct enetc_si *si, struct enetc_cmd_rfse *rfse,
         int index)
{
 struct enetc_cbd cbd = {.cmd = 0};
 dma_addr_t dma, dma_align;
 void *tmp, *tmp_align;
 int err;


 cbd.cmd = 0;
 cbd.cls = 4;
 cbd.index = cpu_to_le16(index);
 cbd.length = cpu_to_le16(sizeof(*rfse));
 cbd.opt[3] = cpu_to_le32(0);

 tmp = dma_alloc_coherent(&si->pdev->dev, sizeof(*rfse) + RFSE_ALIGN,
     &dma, GFP_KERNEL);
 if (!tmp) {
  dev_err(&si->pdev->dev, "DMA mapping of RFS entry failed!\n");
  return -ENOMEM;
 }

 dma_align = ALIGN(dma, RFSE_ALIGN);
 tmp_align = PTR_ALIGN(tmp, RFSE_ALIGN);
 memcpy(tmp_align, rfse, sizeof(*rfse));

 cbd.addr[0] = cpu_to_le32(lower_32_bits(dma_align));
 cbd.addr[1] = cpu_to_le32(upper_32_bits(dma_align));

 err = enetc_send_cmd(si, &cbd);
 if (err)
  dev_err(&si->pdev->dev, "FS entry add failed (%d)!", err);

 dma_free_coherent(&si->pdev->dev, sizeof(*rfse) + RFSE_ALIGN,
     tmp, dma);

 return err;
}
