
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int gl_adapt_enable; } ;
struct TYPE_8__ {TYPE_3__ coal; } ;
struct TYPE_5__ {int gl_adapt_enable; } ;
struct TYPE_6__ {TYPE_1__ coal; } ;
struct hns3_enet_tqp_vector {scalar_t__ mask_addr; TYPE_4__ rx_group; TYPE_2__ tx_group; } ;


 int HNS3_INT_RL_ENABLE_MASK ;
 scalar_t__ HNS3_VECTOR_RL_OFFSET ;
 int hns3_rl_usec_to_reg (int ) ;
 int writel (int ,scalar_t__) ;

void hns3_set_vector_coalesce_rl(struct hns3_enet_tqp_vector *tqp_vector,
     u32 rl_value)
{
 u32 rl_reg = hns3_rl_usec_to_reg(rl_value);






 if (rl_reg > 0 && !tqp_vector->tx_group.coal.gl_adapt_enable &&
     !tqp_vector->rx_group.coal.gl_adapt_enable)



  rl_reg |= HNS3_INT_RL_ENABLE_MASK;

 writel(rl_reg, tqp_vector->mask_addr + HNS3_VECTOR_RL_OFFSET);
}
