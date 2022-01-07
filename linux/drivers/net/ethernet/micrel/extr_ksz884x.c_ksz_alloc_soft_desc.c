
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_desc_info {int ring; int alloc; } ;
struct ksz_desc {int dummy; } ;


 int GFP_KERNEL ;
 int hw_init_desc (struct ksz_desc_info*,int) ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int ksz_alloc_soft_desc(struct ksz_desc_info *desc_info, int transmit)
{
 desc_info->ring = kcalloc(desc_info->alloc, sizeof(struct ksz_desc),
      GFP_KERNEL);
 if (!desc_info->ring)
  return 1;
 hw_init_desc(desc_info, transmit);
 return 0;
}
