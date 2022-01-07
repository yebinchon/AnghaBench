
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int dummy; } ;


 int enic_link_check (struct enic*) ;
 int enic_msglvl_check (struct enic*) ;
 int enic_mtu_check (struct enic*) ;

__attribute__((used)) static void enic_notify_check(struct enic *enic)
{
 enic_msglvl_check(enic);
 enic_mtu_check(enic);
 enic_link_check(enic);
}
