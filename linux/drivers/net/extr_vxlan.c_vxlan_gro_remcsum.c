
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlanhdr {int dummy; } ;
struct sk_buff {int remcsum_offload; } ;
struct gro_remcsum {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int csum_valid; } ;


 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 struct vxlanhdr* skb_gro_remcsum_process (struct sk_buff*,void*,unsigned int,size_t,size_t,size_t,struct gro_remcsum*,int) ;
 size_t vxlan_rco_offset (int ) ;
 size_t vxlan_rco_start (int ) ;

__attribute__((used)) static struct vxlanhdr *vxlan_gro_remcsum(struct sk_buff *skb,
       unsigned int off,
       struct vxlanhdr *vh, size_t hdrlen,
       __be32 vni_field,
       struct gro_remcsum *grc,
       bool nopartial)
{
 size_t start, offset;

 if (skb->remcsum_offload)
  return vh;

 if (!NAPI_GRO_CB(skb)->csum_valid)
  return ((void*)0);

 start = vxlan_rco_start(vni_field);
 offset = start + vxlan_rco_offset(vni_field);

 vh = skb_gro_remcsum_process(skb, (void *)vh, off, hdrlen,
         start, offset, grc, nopartial);

 skb->remcsum_offload = 1;

 return vh;
}
