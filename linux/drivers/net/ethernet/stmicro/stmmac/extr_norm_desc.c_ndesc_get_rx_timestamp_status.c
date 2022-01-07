
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_desc {int des3; int des2; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int ndesc_get_rx_timestamp_status(void *desc, void *next_desc, u32 ats)
{
 struct dma_desc *p = (struct dma_desc *)desc;

 if ((le32_to_cpu(p->des2) == 0xffffffff) &&
     (le32_to_cpu(p->des3) == 0xffffffff))

  return 0;
 else
  return 1;
}
