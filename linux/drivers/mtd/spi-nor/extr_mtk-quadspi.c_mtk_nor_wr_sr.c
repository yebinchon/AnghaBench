
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nor {scalar_t__ base; } ;


 scalar_t__ MTK_NOR_CNT_REG ;
 scalar_t__ MTK_NOR_PRGDATA5_REG ;
 int MTK_NOR_WRSR_CMD ;
 int mtk_nor_execute_cmd (struct mtk_nor*,int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int mtk_nor_wr_sr(struct mtk_nor *mtk_nor, u8 sr)
{
 writeb(sr, mtk_nor->base + MTK_NOR_PRGDATA5_REG);
 writeb(8, mtk_nor->base + MTK_NOR_CNT_REG);
 return mtk_nor_execute_cmd(mtk_nor, MTK_NOR_WRSR_CMD);
}
