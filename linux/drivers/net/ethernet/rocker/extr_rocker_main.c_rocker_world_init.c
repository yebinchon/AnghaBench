
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rocker_world_ops {int (* init ) (struct rocker*) ;int priv_size; } ;
struct rocker {int wpriv; struct rocker_world_ops* wops; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int ) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 struct rocker_world_ops* rocker_world_ops_find (int ) ;
 int stub1 (struct rocker*) ;

__attribute__((used)) static int rocker_world_init(struct rocker *rocker, u8 mode)
{
 struct rocker_world_ops *wops;
 int err;

 wops = rocker_world_ops_find(mode);
 if (!wops) {
  dev_err(&rocker->pdev->dev, "port mode \"%d\" is not supported\n",
   mode);
  return -EINVAL;
 }
 rocker->wops = wops;
 rocker->wpriv = kzalloc(wops->priv_size, GFP_KERNEL);
 if (!rocker->wpriv)
  return -ENOMEM;
 if (!wops->init)
  return 0;
 err = wops->init(rocker);
 if (err)
  kfree(rocker->wpriv);
 return err;
}
