
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct module* owner; int get_rate; } ;
struct v4l2_clk_fixed {unsigned long rate; TYPE_1__ ops; } ;
struct v4l2_clk {int dummy; } ;
struct module {int dummy; } ;


 int ENOMEM ;
 struct v4l2_clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct v4l2_clk*) ;
 int fixed_get_rate ;
 int kfree (struct v4l2_clk_fixed*) ;
 struct v4l2_clk_fixed* kzalloc (int,int ) ;
 struct v4l2_clk* v4l2_clk_register (TYPE_1__*,char const*,struct v4l2_clk_fixed*) ;

struct v4l2_clk *__v4l2_clk_register_fixed(const char *dev_id,
    unsigned long rate, struct module *owner)
{
 struct v4l2_clk *clk;
 struct v4l2_clk_fixed *priv = kzalloc(sizeof(*priv), GFP_KERNEL);

 if (!priv)
  return ERR_PTR(-ENOMEM);

 priv->rate = rate;
 priv->ops.get_rate = fixed_get_rate;
 priv->ops.owner = owner;

 clk = v4l2_clk_register(&priv->ops, dev_id, priv);
 if (IS_ERR(clk))
  kfree(priv);

 return clk;
}
