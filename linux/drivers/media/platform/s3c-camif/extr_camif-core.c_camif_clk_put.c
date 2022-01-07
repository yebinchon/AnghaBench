
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_dev {int * clock; } ;


 int CLK_MAX_NUM ;
 int EINVAL ;
 int ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;

__attribute__((used)) static void camif_clk_put(struct camif_dev *camif)
{
 int i;

 for (i = 0; i < CLK_MAX_NUM; i++) {
  if (IS_ERR(camif->clock[i]))
   continue;
  clk_unprepare(camif->clock[i]);
  clk_put(camif->clock[i]);
  camif->clock[i] = ERR_PTR(-EINVAL);
 }
}
