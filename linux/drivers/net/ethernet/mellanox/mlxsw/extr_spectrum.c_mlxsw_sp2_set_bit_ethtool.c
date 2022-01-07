
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_port_link_mode {int m_ethtool_len; int * mask_ethtool; } ;


 int __set_bit (int ,unsigned long*) ;

__attribute__((used)) static void
mlxsw_sp2_set_bit_ethtool(const struct mlxsw_sp2_port_link_mode *link_mode,
     unsigned long *mode)
{
 int i;

 for (i = 0; i < link_mode->m_ethtool_len; i++)
  __set_bit(link_mode->mask_ethtool[i], mode);
}
