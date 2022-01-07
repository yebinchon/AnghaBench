
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vxlanhdr {int vx_flags; int vx_vni; } ;
struct sk_buff {scalar_t__ remcsum_offload; } ;


 int VXLAN_F_REMCSUM_NOPARTIAL ;
 int VXLAN_HF_RCO ;
 int VXLAN_VNI_MASK ;
 int pskb_may_pull (struct sk_buff*,size_t) ;
 int skb_remcsum_process (struct sk_buff*,void*,size_t,size_t,int) ;
 scalar_t__ vxlan_hdr (struct sk_buff*) ;
 size_t vxlan_rco_offset (int ) ;
 size_t vxlan_rco_start (int ) ;

__attribute__((used)) static bool vxlan_remcsum(struct vxlanhdr *unparsed,
     struct sk_buff *skb, u32 vxflags)
{
 size_t start, offset;

 if (!(unparsed->vx_flags & VXLAN_HF_RCO) || skb->remcsum_offload)
  goto out;

 start = vxlan_rco_start(unparsed->vx_vni);
 offset = start + vxlan_rco_offset(unparsed->vx_vni);

 if (!pskb_may_pull(skb, offset + sizeof(u16)))
  return 0;

 skb_remcsum_process(skb, (void *)(vxlan_hdr(skb) + 1), start, offset,
       !!(vxflags & VXLAN_F_REMCSUM_NOPARTIAL));
out:
 unparsed->vx_flags &= ~VXLAN_HF_RCO;
 unparsed->vx_vni &= VXLAN_VNI_MASK;
 return 1;
}
