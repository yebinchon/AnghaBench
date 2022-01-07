
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipvl_dev {int dummy; } ;
struct in_addr {int dummy; } ;


 void ipvlan_del_addr (struct ipvl_dev*,struct in_addr*,int) ;

__attribute__((used)) static void ipvlan_del_addr4(struct ipvl_dev *ipvlan, struct in_addr *ip4_addr)
{
 return ipvlan_del_addr(ipvlan, ip4_addr, 0);
}
