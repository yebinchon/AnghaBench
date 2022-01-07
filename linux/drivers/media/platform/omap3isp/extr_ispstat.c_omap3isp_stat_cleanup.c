
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct ispstat {int recover_priv; int priv; int buf; int ioctl_lock; TYPE_1__ subdev; } ;


 int isp_stat_bufs_free (struct ispstat*) ;
 int kfree (int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;

void omap3isp_stat_cleanup(struct ispstat *stat)
{
 media_entity_cleanup(&stat->subdev.entity);
 mutex_destroy(&stat->ioctl_lock);
 isp_stat_bufs_free(stat);
 kfree(stat->buf);
 kfree(stat->priv);
 kfree(stat->recover_priv);
}
