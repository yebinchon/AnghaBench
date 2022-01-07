
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns3_enet_tqp_vector {int mask_addr; } ;


 int writel (int ,int ) ;

__attribute__((used)) static void hns3_mask_vector_irq(struct hns3_enet_tqp_vector *tqp_vector,
     u32 mask_en)
{
 writel(mask_en, tqp_vector->mask_addr);
}
