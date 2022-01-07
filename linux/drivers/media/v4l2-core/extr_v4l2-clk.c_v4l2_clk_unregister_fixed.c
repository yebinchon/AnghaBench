
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_clk {int priv; } ;


 int kfree (int ) ;
 int v4l2_clk_unregister (struct v4l2_clk*) ;

void v4l2_clk_unregister_fixed(struct v4l2_clk *clk)
{
 kfree(clk->priv);
 v4l2_clk_unregister(clk);
}
