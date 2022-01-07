
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tun_flags; int tun_id; } ;
struct ip_tunnel_info {int options_len; TYPE_1__ key; } ;
struct genevehdr {int opt_len; int oam; int critical; int options; scalar_t__ rsvd2; int proto_type; int vni; scalar_t__ rsvd1; int ver; } ;


 int ETH_P_TEB ;
 int GENEVE_VER ;
 int TUNNEL_CRIT_OPT ;
 int TUNNEL_GENEVE_OPT ;
 int TUNNEL_OAM ;
 int htons (int ) ;
 int ip_tunnel_info_opts_get (int ,struct ip_tunnel_info const*) ;
 int tunnel_id_to_vni (int ,int ) ;

__attribute__((used)) static void geneve_build_header(struct genevehdr *geneveh,
    const struct ip_tunnel_info *info)
{
 geneveh->ver = GENEVE_VER;
 geneveh->opt_len = info->options_len / 4;
 geneveh->oam = !!(info->key.tun_flags & TUNNEL_OAM);
 geneveh->critical = !!(info->key.tun_flags & TUNNEL_CRIT_OPT);
 geneveh->rsvd1 = 0;
 tunnel_id_to_vni(info->key.tun_id, geneveh->vni);
 geneveh->proto_type = htons(ETH_P_TEB);
 geneveh->rsvd2 = 0;

 if (info->key.tun_flags & TUNNEL_GENEVE_OPT)
  ip_tunnel_info_opts_get(geneveh->options, info);
}
