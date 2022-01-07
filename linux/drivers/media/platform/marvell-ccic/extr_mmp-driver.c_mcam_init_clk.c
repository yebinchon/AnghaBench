
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dev; int * clk; } ;


 scalar_t__ IS_ERR (int ) ;
 unsigned int NR_MCAM_CLK ;
 int dev_warn (int ,char*,int *) ;
 int devm_clk_get (int ,int *) ;
 int ** mcam_clks ;

__attribute__((used)) static void mcam_init_clk(struct mcam_camera *mcam)
{
 unsigned int i;

 for (i = 0; i < NR_MCAM_CLK; i++) {
  if (mcam_clks[i] != ((void*)0)) {



   mcam->clk[i] = devm_clk_get(mcam->dev, mcam_clks[i]);
   if (IS_ERR(mcam->clk[i]))
    dev_warn(mcam->dev, "Could not get clk: %s\n",
      mcam_clks[i]);
  }
 }
}
