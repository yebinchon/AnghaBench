
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_info {int options_len; } ;


 int GFP_KERNEL ;
 struct ip_tunnel_info* kmemdup (struct ip_tunnel_info const*,size_t,int ) ;

__attribute__((used)) static struct ip_tunnel_info *dup_tun_info(const struct ip_tunnel_info *tun_info)
{
 size_t tun_size = sizeof(*tun_info) + tun_info->options_len;

 return kmemdup(tun_info, tun_size, GFP_KERNEL);
}
