
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nfp_pf {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;
typedef enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;


 struct nfp_pf* devlink_priv (struct devlink*) ;
 int nfp_shared_buf_pool_set (struct nfp_pf*,unsigned int,int ,int ,int) ;

__attribute__((used)) static int
nfp_devlink_sb_pool_set(struct devlink *devlink, unsigned int sb_index,
   u16 pool_index,
   u32 size, enum devlink_sb_threshold_type threshold_type,
   struct netlink_ext_ack *extack)
{
 struct nfp_pf *pf = devlink_priv(devlink);

 return nfp_shared_buf_pool_set(pf, sb_index, pool_index,
           size, threshold_type);
}
