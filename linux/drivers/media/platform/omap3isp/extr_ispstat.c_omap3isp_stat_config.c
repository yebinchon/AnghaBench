
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ispstat_generic_config {int buf_size; scalar_t__ config_counter; } ;
struct TYPE_6__ {int name; } ;
struct ispstat {int configured; int ioctl_lock; TYPE_3__ subdev; TYPE_2__* isp; scalar_t__ inc_config; scalar_t__ config_counter; TYPE_1__* ops; struct ispstat_generic_config* recover_priv; } ;
struct TYPE_5__ {int dev; int stat_lock; } ;
struct TYPE_4__ {int (* validate_params ) (struct ispstat*,void*) ;int (* set_params ) (struct ispstat*,void*) ;} ;


 int AF_EXTRA_DATA ;
 scalar_t__ IS_H3A (struct ispstat*) ;
 scalar_t__ IS_H3A_AF (struct ispstat*) ;
 int MAGIC_SIZE ;
 int NUM_H3A_RECOVER_BUFS ;
 int PAGE_ALIGN (int) ;
 int dev_dbg (int ,char*,int ,...) ;
 int isp_stat_bufs_alloc (struct ispstat*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ispstat*,void*) ;
 int stub2 (struct ispstat*,void*) ;

int omap3isp_stat_config(struct ispstat *stat, void *new_conf)
{
 int ret;
 unsigned long irqflags;
 struct ispstat_generic_config *user_cfg = new_conf;
 u32 buf_size = user_cfg->buf_size;

 mutex_lock(&stat->ioctl_lock);

 dev_dbg(stat->isp->dev,
  "%s: configuring module with buffer size=0x%08lx\n",
  stat->subdev.name, (unsigned long)buf_size);

 ret = stat->ops->validate_params(stat, new_conf);
 if (ret) {
  mutex_unlock(&stat->ioctl_lock);
  dev_dbg(stat->isp->dev, "%s: configuration values are invalid.\n",
   stat->subdev.name);
  return ret;
 }

 if (buf_size != user_cfg->buf_size)
  dev_dbg(stat->isp->dev,
   "%s: driver has corrected buffer size request to 0x%08lx\n",
   stat->subdev.name,
   (unsigned long)user_cfg->buf_size);
 if (IS_H3A(stat)) {
  buf_size = user_cfg->buf_size * 2 + MAGIC_SIZE;
  if (IS_H3A_AF(stat))




   buf_size += AF_EXTRA_DATA * (NUM_H3A_RECOVER_BUFS + 2);
  if (stat->recover_priv) {
   struct ispstat_generic_config *recover_cfg =
    stat->recover_priv;
   buf_size += recover_cfg->buf_size *
        NUM_H3A_RECOVER_BUFS;
  }
  buf_size = PAGE_ALIGN(buf_size);
 } else {
  buf_size = PAGE_ALIGN(user_cfg->buf_size + MAGIC_SIZE);
 }

 ret = isp_stat_bufs_alloc(stat, buf_size);
 if (ret) {
  mutex_unlock(&stat->ioctl_lock);
  return ret;
 }

 spin_lock_irqsave(&stat->isp->stat_lock, irqflags);
 stat->ops->set_params(stat, new_conf);
 spin_unlock_irqrestore(&stat->isp->stat_lock, irqflags);





 user_cfg->config_counter = stat->config_counter + stat->inc_config;


 stat->configured = 1;
 dev_dbg(stat->isp->dev,
  "%s: module has been successfully configured.\n",
  stat->subdev.name);

 mutex_unlock(&stat->ioctl_lock);

 return 0;
}
