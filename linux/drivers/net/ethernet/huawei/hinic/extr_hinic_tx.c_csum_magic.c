
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union hinic_l3 {TYPE_2__* v6; TYPE_1__* v4; } ;
typedef int __sum16 ;
struct TYPE_4__ {int daddr; int saddr; } ;
struct TYPE_3__ {int version; int daddr; int saddr; } ;


 int csum_ipv6_magic (int *,int *,int ,unsigned short,int ) ;
 int csum_tcpudp_magic (int ,int ,int ,unsigned short,int ) ;

__attribute__((used)) static __sum16 csum_magic(union hinic_l3 *ip, unsigned short proto)
{
 return (ip->v4->version == 4) ?
  csum_tcpudp_magic(ip->v4->saddr, ip->v4->daddr, 0, proto, 0) :
  csum_ipv6_magic(&ip->v6->saddr, &ip->v6->daddr, 0, proto, 0);
}
