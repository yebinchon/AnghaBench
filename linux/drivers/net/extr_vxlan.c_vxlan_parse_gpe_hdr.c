
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxlanhdr_gpe {scalar_t__ version; int next_protocol; scalar_t__ oam_flag; int np_applied; } ;
struct vxlanhdr {int vx_flags; } ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;


 int VXLAN_GPE_USED_BITS ;
 int tun_p_to_eth_p (int ) ;

__attribute__((used)) static bool vxlan_parse_gpe_hdr(struct vxlanhdr *unparsed,
    __be16 *protocol,
    struct sk_buff *skb, u32 vxflags)
{
 struct vxlanhdr_gpe *gpe = (struct vxlanhdr_gpe *)unparsed;


 if (!gpe->np_applied)
  return 0;



 if (gpe->version != 0)
  return 0;




 if (gpe->oam_flag)
  return 0;

 *protocol = tun_p_to_eth_p(gpe->next_protocol);
 if (!*protocol)
  return 0;

 unparsed->vx_flags &= ~VXLAN_GPE_USED_BITS;
 return 1;
}
