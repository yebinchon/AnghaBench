
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_clk {int use_count; struct v4l2_clk* clk; } ;
struct device {scalar_t__ of_node; } ;
struct clk {int use_count; struct clk* clk; } ;
typedef int clk_name ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 struct v4l2_clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct v4l2_clk*) ;
 int IS_ERR_OR_NULL (struct v4l2_clk*) ;
 int PTR_ERR (struct v4l2_clk*) ;
 int V4L2_CLK_NAME_SIZE ;
 int atomic_inc (int *) ;
 struct v4l2_clk* clk_get (struct device*,char const*) ;
 int clk_lock ;
 int clk_put (struct v4l2_clk*) ;
 char* dev_name (struct device*) ;
 struct v4l2_clk* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct v4l2_clk* v4l2_clk_find (char*) ;
 int v4l2_clk_name_of (char*,int,scalar_t__) ;

struct v4l2_clk *v4l2_clk_get(struct device *dev, const char *id)
{
 struct v4l2_clk *clk;
 struct clk *ccf_clk = clk_get(dev, id);
 char clk_name[V4L2_CLK_NAME_SIZE];

 if (PTR_ERR(ccf_clk) == -EPROBE_DEFER)
  return ERR_PTR(-EPROBE_DEFER);

 if (!IS_ERR_OR_NULL(ccf_clk)) {
  clk = kzalloc(sizeof(*clk), GFP_KERNEL);
  if (!clk) {
   clk_put(ccf_clk);
   return ERR_PTR(-ENOMEM);
  }
  clk->clk = ccf_clk;

  return clk;
 }

 mutex_lock(&clk_lock);
 clk = v4l2_clk_find(dev_name(dev));


 if (PTR_ERR(clk) == -ENODEV && dev->of_node) {
  v4l2_clk_name_of(clk_name, sizeof(clk_name), dev->of_node);
  clk = v4l2_clk_find(clk_name);
 }

 if (!IS_ERR(clk))
  atomic_inc(&clk->use_count);
 mutex_unlock(&clk_lock);

 return clk;
}
