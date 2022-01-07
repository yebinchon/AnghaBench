
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fib_rule_hdr {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 scalar_t__ nla_total_size (int) ;

__attribute__((used)) static inline size_t vrf_fib_rule_nl_size(void)
{
 size_t sz;

 sz = NLMSG_ALIGN(sizeof(struct fib_rule_hdr));
 sz += nla_total_size(sizeof(u8));
 sz += nla_total_size(sizeof(u32));
 sz += nla_total_size(sizeof(u8));

 return sz;
}
