
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns3_enet_tqp_vector {scalar_t__ mask_addr; } ;


 scalar_t__ HNS3_VECTOR_GL0_OFFSET ;
 int hns3_gl_usec_to_reg (int ) ;
 int writel (int ,scalar_t__) ;

void hns3_set_vector_coalesce_rx_gl(struct hns3_enet_tqp_vector *tqp_vector,
        u32 gl_value)
{
 u32 rx_gl_reg = hns3_gl_usec_to_reg(gl_value);

 writel(rx_gl_reg, tqp_vector->mask_addr + HNS3_VECTOR_GL0_OFFSET);
}
