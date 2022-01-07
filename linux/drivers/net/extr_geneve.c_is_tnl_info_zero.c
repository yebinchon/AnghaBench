
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u; scalar_t__ tp_src; scalar_t__ label; scalar_t__ ttl; scalar_t__ tos; scalar_t__ tun_flags; scalar_t__ tun_id; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;


 scalar_t__ memchr_inv (int *,int ,int) ;

__attribute__((used)) static bool is_tnl_info_zero(const struct ip_tunnel_info *info)
{
 return !(info->key.tun_id || info->key.tun_flags || info->key.tos ||
   info->key.ttl || info->key.label || info->key.tp_src ||
   memchr_inv(&info->key.u, 0, sizeof(info->key.u)));
}
