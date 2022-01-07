
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_dev {int dev; int ** clock; } ;


 int CLK_MAX_NUM ;
 int EINVAL ;
 int * ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int camif_clk_put (struct camif_dev*) ;
 int * camif_clocks ;
 int * clk_get (int ,int ) ;
 int clk_prepare (int *) ;
 int clk_put (int *) ;
 int dev_err (int ,char*,int ) ;

__attribute__((used)) static int camif_clk_get(struct camif_dev *camif)
{
 int ret, i;

 for (i = 1; i < CLK_MAX_NUM; i++)
  camif->clock[i] = ERR_PTR(-EINVAL);

 for (i = 0; i < CLK_MAX_NUM; i++) {
  camif->clock[i] = clk_get(camif->dev, camif_clocks[i]);
  if (IS_ERR(camif->clock[i])) {
   ret = PTR_ERR(camif->clock[i]);
   goto err;
  }
  ret = clk_prepare(camif->clock[i]);
  if (ret < 0) {
   clk_put(camif->clock[i]);
   camif->clock[i] = ((void*)0);
   goto err;
  }
 }
 return 0;
err:
 camif_clk_put(camif);
 dev_err(camif->dev, "failed to get clock: %s\n",
  camif_clocks[i]);
 return ret;
}
