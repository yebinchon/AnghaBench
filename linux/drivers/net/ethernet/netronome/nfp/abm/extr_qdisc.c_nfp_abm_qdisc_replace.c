
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_qdisc {int type; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum nfp_qdisc_type { ____Placeholder_nfp_qdisc_type } nfp_qdisc_type ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 struct nfp_qdisc* nfp_abm_qdisc_alloc (struct net_device*,struct nfp_abm_link*,int,int ,int ,unsigned int) ;
 struct nfp_qdisc* nfp_abm_qdisc_find (struct nfp_abm_link*,int ) ;

__attribute__((used)) static int
nfp_abm_qdisc_replace(struct net_device *netdev, struct nfp_abm_link *alink,
        enum nfp_qdisc_type type, u32 parent_handle, u32 handle,
        unsigned int children, struct nfp_qdisc **qdisc)
{
 *qdisc = nfp_abm_qdisc_find(alink, handle);
 if (*qdisc) {
  if (WARN_ON((*qdisc)->type != type))
   return -EINVAL;
  return 1;
 }

 *qdisc = nfp_abm_qdisc_alloc(netdev, alink, type, parent_handle, handle,
         children);
 return *qdisc ? 0 : -ENOMEM;
}
