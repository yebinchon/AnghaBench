
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_clk_fixed {unsigned long rate; } ;
struct v4l2_clk {struct v4l2_clk_fixed* priv; } ;



__attribute__((used)) static unsigned long fixed_get_rate(struct v4l2_clk *clk)
{
 struct v4l2_clk_fixed *priv = clk->priv;
 return priv->rate;
}
