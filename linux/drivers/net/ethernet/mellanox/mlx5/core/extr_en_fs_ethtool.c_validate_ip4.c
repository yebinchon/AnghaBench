
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ethtool_usrip4_spec {scalar_t__ proto; scalar_t__ ip4dst; scalar_t__ ip4src; scalar_t__ tos; scalar_t__ l4_4_bytes; } ;
struct TYPE_5__ {scalar_t__ ip_ver; } ;
struct TYPE_6__ {TYPE_2__ usr_ip4_spec; } ;
struct TYPE_4__ {struct ethtool_usrip4_spec usr_ip4_spec; } ;
struct ethtool_rx_flow_spec {TYPE_3__ h_u; TYPE_1__ m_u; } ;


 int EINVAL ;
 scalar_t__ ETH_RX_NFC_IP4 ;

__attribute__((used)) static int validate_ip4(struct ethtool_rx_flow_spec *fs)
{
 struct ethtool_usrip4_spec *l3_mask = &fs->m_u.usr_ip4_spec;
 int ntuples = 0;

 if (l3_mask->l4_4_bytes || l3_mask->tos ||
     fs->h_u.usr_ip4_spec.ip_ver != ETH_RX_NFC_IP4)
  return -EINVAL;
 if (l3_mask->ip4src)
  ntuples++;
 if (l3_mask->ip4dst)
  ntuples++;
 if (l3_mask->proto)
  ntuples++;

 return ++ntuples;
}
