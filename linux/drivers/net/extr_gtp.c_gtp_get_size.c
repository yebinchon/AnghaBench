
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int __u32 ;


 size_t nla_total_size (int) ;

__attribute__((used)) static size_t gtp_get_size(const struct net_device *dev)
{
 return nla_total_size(sizeof(__u32));
}
