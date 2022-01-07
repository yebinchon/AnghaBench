
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int dest; } ;
struct mlx5e_encap_entry {struct ip_tunnel_info* tun_info; } ;
struct TYPE_2__ {int tun_flags; int tun_id; int tp_dst; } ;
struct ip_tunnel_info {int options_len; TYPE_1__ key; } ;
struct genevehdr {int opt_len; int oam; int critical; int options; int proto_type; int vni; int ver; } ;
typedef int __u8 ;


 int EOPNOTSUPP ;
 int ETH_P_TEB ;
 int IPPROTO_UDP ;
 int MLX5E_GENEVE_VER ;
 int TUNNEL_CRIT_OPT ;
 int TUNNEL_GENEVE_OPT ;
 int TUNNEL_OAM ;
 int htons (int ) ;
 int ip_tunnel_info_opts_get (int ,struct ip_tunnel_info const*) ;
 int memset (struct genevehdr*,int ,int) ;
 int mlx5e_tunnel_id_to_vni (int ,int ) ;

__attribute__((used)) static int mlx5e_gen_ip_tunnel_header_geneve(char buf[],
          __u8 *ip_proto,
          struct mlx5e_encap_entry *e)
{
 const struct ip_tunnel_info *tun_info = e->tun_info;
 struct udphdr *udp = (struct udphdr *)(buf);
 struct genevehdr *geneveh;

 geneveh = (struct genevehdr *)((char *)udp + sizeof(struct udphdr));

 *ip_proto = IPPROTO_UDP;

 udp->dest = tun_info->key.tp_dst;

 memset(geneveh, 0, sizeof(*geneveh));
 geneveh->ver = MLX5E_GENEVE_VER;
 geneveh->opt_len = tun_info->options_len / 4;
 geneveh->oam = !!(tun_info->key.tun_flags & TUNNEL_OAM);
 geneveh->critical = !!(tun_info->key.tun_flags & TUNNEL_CRIT_OPT);
 mlx5e_tunnel_id_to_vni(tun_info->key.tun_id, geneveh->vni);
 geneveh->proto_type = htons(ETH_P_TEB);

 if (tun_info->key.tun_flags & TUNNEL_GENEVE_OPT) {
  if (!geneveh->opt_len)
   return -EOPNOTSUPP;
  ip_tunnel_info_opts_get(geneveh->options, tun_info);
 }

 return 0;
}
