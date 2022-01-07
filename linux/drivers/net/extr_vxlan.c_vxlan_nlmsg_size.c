
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndmsg {int dummy; } ;
struct nda_cacheinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __u32 ;
typedef int __s32 ;
typedef int __be32 ;
typedef int __be16 ;


 int ETH_ALEN ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t vxlan_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct ndmsg))
  + nla_total_size(ETH_ALEN)
  + nla_total_size(sizeof(struct in6_addr))
  + nla_total_size(sizeof(__be16))
  + nla_total_size(sizeof(__be32))
  + nla_total_size(sizeof(__u32))
  + nla_total_size(sizeof(__s32))
  + nla_total_size(sizeof(struct nda_cacheinfo));
}
