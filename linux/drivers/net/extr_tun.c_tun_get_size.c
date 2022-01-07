
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef int gid_t ;


 int BUILD_BUG_ON (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t tun_get_size(const struct net_device *dev)
{
 BUILD_BUG_ON(sizeof(u32) != sizeof(uid_t));
 BUILD_BUG_ON(sizeof(u32) != sizeof(gid_t));

 return nla_total_size(sizeof(uid_t)) +
        nla_total_size(sizeof(gid_t)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u8)) +
        nla_total_size(sizeof(u32)) +
        nla_total_size(sizeof(u32)) +
        0;
}
