
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct enetc_si {TYPE_1__* pdev; } ;
struct enetc_cbd {int cmd; int cls; void** addr; int length; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ALIGN (int ,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__* PTR_ALIGN (scalar_t__*,int) ;
 int RSSE_ALIGN ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*,...) ;
 scalar_t__* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,scalar_t__*,int ) ;
 int enetc_send_cmd (struct enetc_si*,struct enetc_cbd*) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int enetc_cmd_rss_table(struct enetc_si *si, u32 *table, int count,
          bool read)
{
 struct enetc_cbd cbd = {.cmd = 0};
 dma_addr_t dma, dma_align;
 u8 *tmp, *tmp_align;
 int err, i;

 if (count < RSSE_ALIGN)

  return -EINVAL;

 tmp = dma_alloc_coherent(&si->pdev->dev, count + RSSE_ALIGN,
     &dma, GFP_KERNEL);
 if (!tmp) {
  dev_err(&si->pdev->dev, "DMA mapping of RSS table failed!\n");
  return -ENOMEM;
 }
 dma_align = ALIGN(dma, RSSE_ALIGN);
 tmp_align = PTR_ALIGN(tmp, RSSE_ALIGN);

 if (!read)
  for (i = 0; i < count; i++)
   tmp_align[i] = (u8)(table[i]);


 cbd.cmd = read ? 2 : 1;
 cbd.cls = 3;
 cbd.length = cpu_to_le16(count);

 cbd.addr[0] = cpu_to_le32(lower_32_bits(dma_align));
 cbd.addr[1] = cpu_to_le32(upper_32_bits(dma_align));

 err = enetc_send_cmd(si, &cbd);
 if (err)
  dev_err(&si->pdev->dev, "RSS cmd failed (%d)!", err);

 if (read)
  for (i = 0; i < count; i++)
   table[i] = tmp_align[i];

 dma_free_coherent(&si->pdev->dev, count + RSSE_ALIGN, tmp, dma);

 return err;
}
