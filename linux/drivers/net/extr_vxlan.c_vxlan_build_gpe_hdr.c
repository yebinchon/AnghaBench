
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxlanhdr_gpe {int np_applied; int next_protocol; } ;
struct vxlanhdr {int dummy; } ;
typedef int __be16 ;


 int EPFNOSUPPORT ;
 int tun_p_from_eth_p (int ) ;

__attribute__((used)) static int vxlan_build_gpe_hdr(struct vxlanhdr *vxh, u32 vxflags,
          __be16 protocol)
{
 struct vxlanhdr_gpe *gpe = (struct vxlanhdr_gpe *)vxh;

 gpe->np_applied = 1;
 gpe->next_protocol = tun_p_from_eth_p(protocol);
 if (!gpe->next_protocol)
  return -EPFNOSUPPORT;
 return 0;
}
