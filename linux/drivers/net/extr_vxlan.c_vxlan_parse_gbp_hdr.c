
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vxlanhdr_gbp {scalar_t__ policy_applied; scalar_t__ dont_learn; int policy_id; } ;
struct vxlanhdr {int vx_flags; } ;
struct vxlan_metadata {int gbp; } ;
struct sk_buff {int mark; } ;
struct TYPE_4__ {int tun_flags; } ;
struct TYPE_5__ {int options_len; TYPE_1__ key; } ;
struct TYPE_6__ {TYPE_2__ tun_info; } ;
struct metadata_dst {TYPE_3__ u; } ;


 int TUNNEL_VXLAN_OPT ;
 int VXLAN_F_COLLECT_METADATA ;
 int VXLAN_GBP_DONT_LEARN ;
 int VXLAN_GBP_POLICY_APPLIED ;
 int VXLAN_GBP_USED_BITS ;
 int VXLAN_HF_GBP ;
 int ntohs (int ) ;
 scalar_t__ skb_dst (struct sk_buff*) ;

__attribute__((used)) static void vxlan_parse_gbp_hdr(struct vxlanhdr *unparsed,
    struct sk_buff *skb, u32 vxflags,
    struct vxlan_metadata *md)
{
 struct vxlanhdr_gbp *gbp = (struct vxlanhdr_gbp *)unparsed;
 struct metadata_dst *tun_dst;

 if (!(unparsed->vx_flags & VXLAN_HF_GBP))
  goto out;

 md->gbp = ntohs(gbp->policy_id);

 tun_dst = (struct metadata_dst *)skb_dst(skb);
 if (tun_dst) {
  tun_dst->u.tun_info.key.tun_flags |= TUNNEL_VXLAN_OPT;
  tun_dst->u.tun_info.options_len = sizeof(*md);
 }
 if (gbp->dont_learn)
  md->gbp |= VXLAN_GBP_DONT_LEARN;

 if (gbp->policy_applied)
  md->gbp |= VXLAN_GBP_POLICY_APPLIED;


 if (!(vxflags & VXLAN_F_COLLECT_METADATA))
  skb->mark = md->gbp;
out:
 unparsed->vx_flags &= ~VXLAN_GBP_USED_BITS;
}
