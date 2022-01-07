
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int * clk; } ;


 int IS_ERR (int ) ;
 int NR_MCAM_CLK ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mcam_clk_disable(struct mcam_camera *mcam)
{
 int i;

 for (i = NR_MCAM_CLK - 1; i >= 0; i--) {
  if (!IS_ERR(mcam->clk[i]))
   clk_disable_unprepare(mcam->clk[i]);
 }
}
