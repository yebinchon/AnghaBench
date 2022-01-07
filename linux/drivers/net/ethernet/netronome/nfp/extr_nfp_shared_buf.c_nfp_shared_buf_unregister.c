
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_pf {unsigned int num_shared_bufs; TYPE_1__* shared_bufs; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int devlink_sb_unregister (struct devlink*,int ) ;
 int kfree (TYPE_1__*) ;
 int le32_to_cpu (int ) ;
 struct devlink* priv_to_devlink (struct nfp_pf*) ;

void nfp_shared_buf_unregister(struct nfp_pf *pf)
{
 struct devlink *devlink = priv_to_devlink(pf);
 unsigned int i;

 for (i = 0; i < pf->num_shared_bufs; i++)
  devlink_sb_unregister(devlink,
          le32_to_cpu(pf->shared_bufs[i].id));
 kfree(pf->shared_bufs);
}
