
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int dummy; } ;


 int MTK_GDM1_AF ;
 int MTK_GDM2_AF ;
 int MTK_INT_STATUS2 ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 int mtk_stats_update (struct mtk_eth*) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mtk_handle_status_irq(struct mtk_eth *eth)
{
 u32 status2 = mtk_r32(eth, MTK_INT_STATUS2);

 if (unlikely(status2 & (MTK_GDM1_AF | MTK_GDM2_AF))) {
  mtk_stats_update(eth);
  mtk_w32(eth, (MTK_GDM1_AF | MTK_GDM2_AF),
   MTK_INT_STATUS2);
 }
}
