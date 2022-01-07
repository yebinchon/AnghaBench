
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlanhdr {int vx_vni; int vx_flags; } ;
struct udphdr {int dest; } ;
struct mlx5e_encap_entry {TYPE_1__* tun_info; } ;
struct ip_tunnel_key {int tp_dst; int tun_id; } ;
typedef int __u8 ;
typedef int __be32 ;
struct TYPE_2__ {struct ip_tunnel_key key; } ;


 int IPPROTO_UDP ;
 int VXLAN_HF_VNI ;
 int tunnel_id_to_key32 (int ) ;
 int vxlan_vni_field (int ) ;

__attribute__((used)) static int mlx5e_gen_ip_tunnel_header_vxlan(char buf[],
         __u8 *ip_proto,
         struct mlx5e_encap_entry *e)
{
 const struct ip_tunnel_key *tun_key = &e->tun_info->key;
 __be32 tun_id = tunnel_id_to_key32(tun_key->tun_id);
 struct udphdr *udp = (struct udphdr *)(buf);
 struct vxlanhdr *vxh;

 vxh = (struct vxlanhdr *)((char *)udp + sizeof(struct udphdr));
 *ip_proto = IPPROTO_UDP;

 udp->dest = tun_key->tp_dst;
 vxh->vx_flags = VXLAN_HF_VNI;
 vxh->vx_vni = vxlan_vni_field(tun_id);

 return 0;
}
