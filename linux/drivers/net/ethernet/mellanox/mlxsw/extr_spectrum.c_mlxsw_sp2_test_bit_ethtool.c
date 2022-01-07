
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_port_link_mode {int m_ethtool_len; int * mask_ethtool; } ;


 scalar_t__ test_bit (int ,unsigned long const*) ;

__attribute__((used)) static bool
mlxsw_sp2_test_bit_ethtool(const struct mlxsw_sp2_port_link_mode *link_mode,
      const unsigned long *mode)
{
 int cnt = 0;
 int i;

 for (i = 0; i < link_mode->m_ethtool_len; i++) {
  if (test_bit(link_mode->mask_ethtool[i], mode))
   cnt++;
 }

 return cnt == link_mode->m_ethtool_len;
}
