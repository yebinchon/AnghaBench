
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int dummy; } ;


 int MTK_LRO_CTRL_DW2_CFG (int) ;
 int MTK_LRO_DIP_DW0_CFG (int) ;
 int MTK_RING_MYIP_VLD ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;

__attribute__((used)) static void mtk_hwlro_inval_ipaddr(struct mtk_eth *eth, int idx)
{
 u32 reg_val;

 reg_val = mtk_r32(eth, MTK_LRO_CTRL_DW2_CFG(idx));


 mtk_w32(eth, (reg_val & ~MTK_RING_MYIP_VLD), MTK_LRO_CTRL_DW2_CFG(idx));

 mtk_w32(eth, 0, MTK_LRO_DIP_DW0_CFG(idx));
}
