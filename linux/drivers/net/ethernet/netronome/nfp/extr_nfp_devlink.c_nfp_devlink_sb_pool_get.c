
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_pf {int dummy; } ;
struct devlink_sb_pool_info {int dummy; } ;
struct devlink {int dummy; } ;


 struct nfp_pf* devlink_priv (struct devlink*) ;
 int nfp_shared_buf_pool_get (struct nfp_pf*,unsigned int,int ,struct devlink_sb_pool_info*) ;

__attribute__((used)) static int
nfp_devlink_sb_pool_get(struct devlink *devlink, unsigned int sb_index,
   u16 pool_index, struct devlink_sb_pool_info *pool_info)
{
 struct nfp_pf *pf = devlink_priv(devlink);

 return nfp_shared_buf_pool_get(pf, sb_index, pool_index, pool_info);
}
