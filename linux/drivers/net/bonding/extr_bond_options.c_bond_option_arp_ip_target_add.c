
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dummy; } ;
typedef int __be32 ;


 int _bond_option_arp_ip_target_add (struct bonding*,int ) ;

__attribute__((used)) static int bond_option_arp_ip_target_add(struct bonding *bond, __be32 target)
{
 return _bond_option_arp_ip_target_add(bond, target);
}
