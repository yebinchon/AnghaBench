
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef int pe ;


 int EINVAL ;
 unsigned short IPPROTO_ICMPV6 ;
 unsigned short IPPROTO_IPIP ;
 unsigned short IPPROTO_TCP ;
 unsigned short IPPROTO_UDP ;
 int MVPP2_PE_FIRST_FREE_TID ;
 int MVPP2_PE_LAST_FREE_TID ;
 int MVPP2_PRS_IPV6_NO_EXT_AI_BIT ;
 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_LU_IP6 ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_SRAM_LU_GEN_BIT ;
 int MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ;
 int MVPP2_PRS_SRAM_UDF_TYPE_L4 ;
 int MVPP2_PRS_TCAM_PROTO_MASK ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_offset_set (struct mvpp2_prs_entry*,int ,int,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,unsigned int,unsigned int) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int ,unsigned short,int ) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static int mvpp2_prs_ip6_proto(struct mvpp2 *priv, unsigned short proto,
          unsigned int ri, unsigned int ri_mask)
{
 struct mvpp2_prs_entry pe;
 int tid;

 if ((proto != IPPROTO_TCP) && (proto != IPPROTO_UDP) &&
     (proto != IPPROTO_ICMPV6) && (proto != IPPROTO_IPIP))
  return -EINVAL;

 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_IP6);
 pe.index = tid;


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
 mvpp2_prs_sram_ri_update(&pe, ri, ri_mask);
 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L4,
      sizeof(struct ipv6hdr) - 6,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

 mvpp2_prs_tcam_data_byte_set(&pe, 0, proto, MVPP2_PRS_TCAM_PROTO_MASK);
 mvpp2_prs_tcam_ai_update(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
     MVPP2_PRS_IPV6_NO_EXT_AI_BIT);

 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP6);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
