
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int cmdq_addr_l_sz; } ;


 int MLX5_NIC_IFC_OFFSET ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void mlx5_set_nic_state(struct mlx5_core_dev *dev, u8 state)
{
 u32 cur_cmdq_addr_l_sz;

 cur_cmdq_addr_l_sz = ioread32be(&dev->iseg->cmdq_addr_l_sz);
 iowrite32be((cur_cmdq_addr_l_sz & 0xFFFFF000) |
      state << MLX5_NIC_IFC_OFFSET,
      &dev->iseg->cmdq_addr_l_sz);
}
