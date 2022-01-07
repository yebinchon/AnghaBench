
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ethtool_usrip4_spec {scalar_t__ proto; int ip4dst; int ip4src; } ;
struct TYPE_4__ {struct ethtool_usrip4_spec usr_ip4_spec; } ;
struct TYPE_3__ {struct ethtool_usrip4_spec usr_ip4_spec; } ;
struct ethtool_rx_flow_spec {TYPE_2__ h_u; TYPE_1__ m_u; } ;


 int MLX5E_FTE_SET (void*,int ,scalar_t__) ;
 int ip_protocol ;
 int set_ip4 (void*,void*,int ,int ,int ,int ) ;

__attribute__((used)) static void
parse_ip4(void *headers_c, void *headers_v, struct ethtool_rx_flow_spec *fs)
{
 struct ethtool_usrip4_spec *l3_mask = &fs->m_u.usr_ip4_spec;
 struct ethtool_usrip4_spec *l3_val = &fs->h_u.usr_ip4_spec;

 set_ip4(headers_c, headers_v, l3_mask->ip4src, l3_val->ip4src,
  l3_mask->ip4dst, l3_val->ip4dst);

 if (l3_mask->proto) {
  MLX5E_FTE_SET(headers_c, ip_protocol, l3_mask->proto);
  MLX5E_FTE_SET(headers_v, ip_protocol, l3_val->proto);
 }
}
