
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_clk_ops {int dummy; } ;
struct v4l2_clk {struct v4l2_clk* dev_id; int list; int lock; int use_count; void* priv; struct v4l2_clk_ops const* ops; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 struct v4l2_clk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int atomic_set (int *,int ) ;
 int clk_list ;
 int clk_lock ;
 int kfree (struct v4l2_clk*) ;
 struct v4l2_clk* kstrdup (char const*,int ) ;
 struct v4l2_clk* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_clk_find (char const*) ;

struct v4l2_clk *v4l2_clk_register(const struct v4l2_clk_ops *ops,
       const char *dev_id,
       void *priv)
{
 struct v4l2_clk *clk;
 int ret;

 if (!ops || !dev_id)
  return ERR_PTR(-EINVAL);

 clk = kzalloc(sizeof(struct v4l2_clk), GFP_KERNEL);
 if (!clk)
  return ERR_PTR(-ENOMEM);

 clk->dev_id = kstrdup(dev_id, GFP_KERNEL);
 if (!clk->dev_id) {
  ret = -ENOMEM;
  goto ealloc;
 }
 clk->ops = ops;
 clk->priv = priv;
 atomic_set(&clk->use_count, 0);
 mutex_init(&clk->lock);

 mutex_lock(&clk_lock);
 if (!IS_ERR(v4l2_clk_find(dev_id))) {
  mutex_unlock(&clk_lock);
  ret = -EEXIST;
  goto eexist;
 }
 list_add_tail(&clk->list, &clk_list);
 mutex_unlock(&clk_lock);

 return clk;

eexist:
ealloc:
 kfree(clk->dev_id);
 kfree(clk);
 return ERR_PTR(ret);
}
