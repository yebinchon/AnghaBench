
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ bond_confirm_addr (struct net_device*,int ,scalar_t__) ;

__attribute__((used)) static int bond_upper_dev_walk(struct net_device *upper, void *data)
{
 __be32 ip = *((__be32 *)data);

 return ip == bond_confirm_addr(upper, 0, ip);
}
