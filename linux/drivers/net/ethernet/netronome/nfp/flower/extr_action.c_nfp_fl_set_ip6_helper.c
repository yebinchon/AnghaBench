
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int jump_id; int len_lw; } ;
struct nfp_fl_set_ipv6_addr {TYPE_1__ head; int reserved; TYPE_2__* ipv6; } ;
typedef int __be32 ;
struct TYPE_4__ {int mask; int exact; } ;


 int NFP_FL_LW_SIZ ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static void
nfp_fl_set_ip6_helper(int opcode_tag, u8 word, __be32 exact, __be32 mask,
        struct nfp_fl_set_ipv6_addr *ip6)
{
 ip6->ipv6[word].mask |= mask;
 ip6->ipv6[word].exact &= ~mask;
 ip6->ipv6[word].exact |= exact & mask;

 ip6->reserved = cpu_to_be16(0);
 ip6->head.jump_id = opcode_tag;
 ip6->head.len_lw = sizeof(*ip6) >> NFP_FL_LW_SIZ;
}
