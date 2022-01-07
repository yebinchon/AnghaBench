
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filer_table {int dummy; } ;
struct ethtool_tcpip4_spec {int tos; int psrc; int pdst; int ip4dst; int ip4src; } ;


 int RQFCR_PID_DIA ;
 int RQFCR_PID_DPT ;
 int RQFCR_PID_SIA ;
 int RQFCR_PID_SPT ;
 int RQFCR_PID_TOS ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int gfar_set_attribute (int ,int ,int ,struct filer_table*) ;

__attribute__((used)) static void gfar_set_basic_ip(struct ethtool_tcpip4_spec *value,
         struct ethtool_tcpip4_spec *mask,
         struct filer_table *tab)
{
 gfar_set_attribute(be32_to_cpu(value->ip4src),
      be32_to_cpu(mask->ip4src),
      RQFCR_PID_SIA, tab);
 gfar_set_attribute(be32_to_cpu(value->ip4dst),
      be32_to_cpu(mask->ip4dst),
      RQFCR_PID_DIA, tab);
 gfar_set_attribute(be16_to_cpu(value->pdst),
      be16_to_cpu(mask->pdst),
      RQFCR_PID_DPT, tab);
 gfar_set_attribute(be16_to_cpu(value->psrc),
      be16_to_cpu(mask->psrc),
      RQFCR_PID_SPT, tab);
 gfar_set_attribute(value->tos, mask->tos, RQFCR_PID_TOS, tab);
}
