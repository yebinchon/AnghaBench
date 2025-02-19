
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int pe ;


 int IPPROTO_IGMP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int MVPP2_PE_IP4_ADDR_UN ;
 int MVPP2_PE_IP4_PROTO_UN ;
 int MVPP2_PRS_IPV4_DIP_AI_BIT ;
 int MVPP2_PRS_L3_BROAD_CAST ;
 int MVPP2_PRS_L3_MULTI_CAST ;
 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_LU_IP4 ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_RI_CPU_CODE_MASK ;
 int MVPP2_PRS_RI_CPU_CODE_RX_SPEC ;
 int MVPP2_PRS_RI_L3_ADDR_MASK ;
 int MVPP2_PRS_RI_L3_UCAST ;
 int MVPP2_PRS_RI_L4_OTHER ;
 int MVPP2_PRS_RI_L4_PROTO_MASK ;
 int MVPP2_PRS_RI_L4_TCP ;
 int MVPP2_PRS_RI_L4_UDP ;
 int MVPP2_PRS_RI_UDF3_MASK ;
 int MVPP2_PRS_RI_UDF3_RX_SPECIAL ;
 int MVPP2_PRS_SRAM_LU_GEN_BIT ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ;
 int MVPP2_PRS_SRAM_UDF_TYPE_L4 ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_ip4_cast (struct mvpp2*,int ) ;
 int mvpp2_prs_ip4_proto (struct mvpp2*,int ,int,int) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_offset_set (struct mvpp2_prs_entry*,int ,int,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static int mvpp2_prs_ip4_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;
 int err;


 err = mvpp2_prs_ip4_proto(priv, IPPROTO_TCP, MVPP2_PRS_RI_L4_TCP,
      MVPP2_PRS_RI_L4_PROTO_MASK);
 if (err)
  return err;

 err = mvpp2_prs_ip4_proto(priv, IPPROTO_UDP, MVPP2_PRS_RI_L4_UDP,
      MVPP2_PRS_RI_L4_PROTO_MASK);
 if (err)
  return err;

 err = mvpp2_prs_ip4_proto(priv, IPPROTO_IGMP,
      MVPP2_PRS_RI_CPU_CODE_RX_SPEC |
      MVPP2_PRS_RI_UDF3_RX_SPECIAL,
      MVPP2_PRS_RI_CPU_CODE_MASK |
      MVPP2_PRS_RI_UDF3_MASK);
 if (err)
  return err;


 err = mvpp2_prs_ip4_cast(priv, MVPP2_PRS_L3_BROAD_CAST);
 if (err)
  return err;


 err = mvpp2_prs_ip4_cast(priv, MVPP2_PRS_L3_MULTI_CAST);
 if (err)
  return err;


 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_IP4);
 pe.index = MVPP2_PE_IP4_PROTO_UN;


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_IP4);
 mvpp2_prs_sram_shift_set(&pe, 12, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L4,
      sizeof(struct iphdr) - 4,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);
 mvpp2_prs_sram_ai_update(&pe, MVPP2_PRS_IPV4_DIP_AI_BIT,
     MVPP2_PRS_IPV4_DIP_AI_BIT);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L4_OTHER,
     MVPP2_PRS_RI_L4_PROTO_MASK);

 mvpp2_prs_tcam_ai_update(&pe, 0, MVPP2_PRS_IPV4_DIP_AI_BIT);

 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP4);
 mvpp2_prs_hw_write(priv, &pe);


 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_IP4);
 pe.index = MVPP2_PE_IP4_ADDR_UN;


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_UCAST,
     MVPP2_PRS_RI_L3_ADDR_MASK);

 mvpp2_prs_tcam_ai_update(&pe, MVPP2_PRS_IPV4_DIP_AI_BIT,
     MVPP2_PRS_IPV4_DIP_AI_BIT);

 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP4);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
