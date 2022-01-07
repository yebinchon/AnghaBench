
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; int* sram; } ;
struct mvpp2 {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int pe ;


 int EINVAL ;
 unsigned short IPPROTO_IGMP ;
 unsigned short IPPROTO_TCP ;
 unsigned short IPPROTO_UDP ;
 int MVPP2_PE_FIRST_FREE_TID ;
 int MVPP2_PE_LAST_FREE_TID ;
 int MVPP2_PRS_IPV4_DIP_AI_BIT ;
 int MVPP2_PRS_LU_IP4 ;
 int MVPP2_PRS_PORT_MASK ;
 unsigned int MVPP2_PRS_RI_IP_FRAG_MASK ;
 unsigned int MVPP2_PRS_RI_IP_FRAG_TRUE ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ;
 size_t MVPP2_PRS_SRAM_RI_CTRL_WORD ;
 size_t MVPP2_PRS_SRAM_RI_WORD ;
 int MVPP2_PRS_SRAM_UDF_TYPE_L4 ;
 int MVPP2_PRS_TCAM_PROTO_MASK ;
 int MVPP2_PRS_TCAM_PROTO_MASK_L ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_offset_set (struct mvpp2_prs_entry*,int ,int,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,unsigned int,unsigned int) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int,int,int) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static int mvpp2_prs_ip4_proto(struct mvpp2 *priv, unsigned short proto,
          unsigned int ri, unsigned int ri_mask)
{
 struct mvpp2_prs_entry pe;
 int tid;

 if ((proto != IPPROTO_TCP) && (proto != IPPROTO_UDP) &&
     (proto != IPPROTO_IGMP))
  return -EINVAL;


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_IP4);
 pe.index = tid;


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_IP4);
 mvpp2_prs_sram_shift_set(&pe, 12, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L4,
      sizeof(struct iphdr) - 4,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);
 mvpp2_prs_sram_ai_update(&pe, MVPP2_PRS_IPV4_DIP_AI_BIT,
     MVPP2_PRS_IPV4_DIP_AI_BIT);
 mvpp2_prs_sram_ri_update(&pe, ri, ri_mask | MVPP2_PRS_RI_IP_FRAG_MASK);

 mvpp2_prs_tcam_data_byte_set(&pe, 2, 0x00,
         MVPP2_PRS_TCAM_PROTO_MASK_L);
 mvpp2_prs_tcam_data_byte_set(&pe, 3, 0x00,
         MVPP2_PRS_TCAM_PROTO_MASK);

 mvpp2_prs_tcam_data_byte_set(&pe, 5, proto, MVPP2_PRS_TCAM_PROTO_MASK);
 mvpp2_prs_tcam_ai_update(&pe, 0, MVPP2_PRS_IPV4_DIP_AI_BIT);

 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP4);
 mvpp2_prs_hw_write(priv, &pe);


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 pe.index = tid;

 pe.sram[MVPP2_PRS_SRAM_RI_WORD] = 0x0;
 pe.sram[MVPP2_PRS_SRAM_RI_CTRL_WORD] = 0x0;
 mvpp2_prs_sram_ri_update(&pe, ri, ri_mask);

 mvpp2_prs_sram_ri_update(&pe, ri | MVPP2_PRS_RI_IP_FRAG_TRUE,
     ri_mask | MVPP2_PRS_RI_IP_FRAG_MASK);

 mvpp2_prs_tcam_data_byte_set(&pe, 2, 0x00, 0x0);
 mvpp2_prs_tcam_data_byte_set(&pe, 3, 0x00, 0x0);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP4);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
