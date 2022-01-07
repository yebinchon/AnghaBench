
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int * clk; } ;


 int IS_ERR (int ) ;
 unsigned int NR_MCAM_CLK ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static void mcam_clk_enable(struct mcam_camera *mcam)
{
 unsigned int i;

 for (i = 0; i < NR_MCAM_CLK; i++) {
  if (!IS_ERR(mcam->clk[i]))
   clk_prepare_enable(mcam->clk[i]);
 }
}
