
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sa_family; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;
union vxlan_addr {TYPE_3__ sa; TYPE_2__ sin; } ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be32 ;


 int AF_INET ;
 int EAFNOSUPPORT ;
 int nla_get_in_addr (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static int vxlan_nla_get_addr(union vxlan_addr *ip, struct nlattr *nla)
{
 if (nla_len(nla) >= sizeof(struct in6_addr)) {
  return -EAFNOSUPPORT;
 } else if (nla_len(nla) >= sizeof(__be32)) {
  ip->sin.sin_addr.s_addr = nla_get_in_addr(nla);
  ip->sa.sa_family = AF_INET;
  return 0;
 } else {
  return -EAFNOSUPPORT;
 }
}
