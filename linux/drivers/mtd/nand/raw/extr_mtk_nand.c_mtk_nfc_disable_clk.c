
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_nfc_clk {int pad_clk; int nfi_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mtk_nfc_disable_clk(struct mtk_nfc_clk *clk)
{
 clk_disable_unprepare(clk->nfi_clk);
 clk_disable_unprepare(clk->pad_clk);
}
