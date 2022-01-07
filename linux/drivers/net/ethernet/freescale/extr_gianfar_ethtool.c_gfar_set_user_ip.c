
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filer_table {int dummy; } ;
struct ethtool_usrip4_spec {int l4_4_bytes; int proto; int tos; int ip4dst; int ip4src; } ;


 int RQFCR_PID_ARB ;
 int RQFCR_PID_DIA ;
 int RQFCR_PID_L4P ;
 int RQFCR_PID_SIA ;
 int RQFCR_PID_TOS ;
 int be32_to_cpu (int ) ;
 int gfar_set_attribute (int ,int ,int ,struct filer_table*) ;

__attribute__((used)) static void gfar_set_user_ip(struct ethtool_usrip4_spec *value,
        struct ethtool_usrip4_spec *mask,
        struct filer_table *tab)
{
 gfar_set_attribute(be32_to_cpu(value->ip4src),
      be32_to_cpu(mask->ip4src),
      RQFCR_PID_SIA, tab);
 gfar_set_attribute(be32_to_cpu(value->ip4dst),
      be32_to_cpu(mask->ip4dst),
      RQFCR_PID_DIA, tab);
 gfar_set_attribute(value->tos, mask->tos, RQFCR_PID_TOS, tab);
 gfar_set_attribute(value->proto, mask->proto, RQFCR_PID_L4P, tab);
 gfar_set_attribute(be32_to_cpu(value->l4_4_bytes),
      be32_to_cpu(mask->l4_4_bytes),
      RQFCR_PID_ARB, tab);

}
