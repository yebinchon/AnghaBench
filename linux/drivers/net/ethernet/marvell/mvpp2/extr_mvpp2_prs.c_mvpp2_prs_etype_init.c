
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {int index; int* sram; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef int pe ;
struct TYPE_2__ {int finish; void* udf; } ;


 int ETH_P_ARP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int ETH_P_PPP_SES ;
 scalar_t__ MVPP2_ETH_TYPE_LEN ;
 int MVPP2_IP_LBDT_TYPE ;
 scalar_t__ MVPP2_MAX_L3_ADDR_SIZE ;
 size_t MVPP2_PE_ETH_TYPE_UN ;
 int MVPP2_PE_FIRST_FREE_TID ;
 int MVPP2_PE_LAST_FREE_TID ;
 scalar_t__ MVPP2_PPPOE_HDR_SIZE ;
 int MVPP2_PRS_IPV4_HEAD ;
 int MVPP2_PRS_IPV4_HEAD_MASK ;
 int MVPP2_PRS_IPV4_IHL ;
 int MVPP2_PRS_IPV4_IHL_MASK ;
 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_LU_IP4 ;
 int MVPP2_PRS_LU_IP6 ;
 int MVPP2_PRS_LU_L2 ;
 int MVPP2_PRS_LU_PPPOE ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_RI_CPU_CODE_MASK ;
 int MVPP2_PRS_RI_CPU_CODE_RX_SPEC ;
 int MVPP2_PRS_RI_L3_ARP ;
 int MVPP2_PRS_RI_L3_IP4 ;
 int MVPP2_PRS_RI_L3_IP4_OPT ;
 int MVPP2_PRS_RI_L3_IP6 ;
 int MVPP2_PRS_RI_L3_PROTO_MASK ;
 int MVPP2_PRS_RI_L3_UN ;
 int MVPP2_PRS_RI_PPPOE_MASK ;
 int MVPP2_PRS_RI_UDF3_MASK ;
 int MVPP2_PRS_RI_UDF3_RX_SPECIAL ;
 int MVPP2_PRS_SRAM_LU_GEN_BIT ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int MVPP2_PRS_SRAM_OP_SEL_UDF_ADD ;
 size_t MVPP2_PRS_SRAM_RI_CTRL_WORD ;
 size_t MVPP2_PRS_SRAM_RI_WORD ;
 int MVPP2_PRS_SRAM_UDF_TYPE_L3 ;
 void* MVPP2_PRS_UDF_L2_DEF ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_match_etype (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_shadow_ri_set (struct mvpp2*,size_t,int,int) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_offset_set (struct mvpp2_prs_entry*,int ,scalar_t__,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int,int) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,scalar_t__,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,scalar_t__,int,int) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static int mvpp2_prs_etype_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;
 int tid;


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_L2);
 pe.index = tid;

 mvpp2_prs_match_etype(&pe, 0, ETH_P_PPP_SES);

 mvpp2_prs_sram_shift_set(&pe, MVPP2_PPPOE_HDR_SIZE,
     MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_PPPOE);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_PPPOE_MASK,
     MVPP2_PRS_RI_PPPOE_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 0;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_PPPOE_MASK,
    MVPP2_PRS_RI_PPPOE_MASK);
 mvpp2_prs_hw_write(priv, &pe);


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_L2);
 pe.index = tid;

 mvpp2_prs_match_etype(&pe, 0, ETH_P_ARP);


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_ARP,
     MVPP2_PRS_RI_L3_PROTO_MASK);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
      MVPP2_ETH_TYPE_LEN,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 1;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_L3_ARP,
    MVPP2_PRS_RI_L3_PROTO_MASK);
 mvpp2_prs_hw_write(priv, &pe);


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_L2);
 pe.index = tid;

 mvpp2_prs_match_etype(&pe, 0, MVPP2_IP_LBDT_TYPE);


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_CPU_CODE_RX_SPEC |
     MVPP2_PRS_RI_UDF3_RX_SPECIAL,
     MVPP2_PRS_RI_CPU_CODE_MASK |
     MVPP2_PRS_RI_UDF3_MASK);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
      MVPP2_ETH_TYPE_LEN,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 1;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_CPU_CODE_RX_SPEC |
    MVPP2_PRS_RI_UDF3_RX_SPECIAL,
    MVPP2_PRS_RI_CPU_CODE_MASK |
    MVPP2_PRS_RI_UDF3_MASK);
 mvpp2_prs_hw_write(priv, &pe);


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_L2);
 pe.index = tid;

 mvpp2_prs_match_etype(&pe, 0, ETH_P_IP);
 mvpp2_prs_tcam_data_byte_set(&pe, MVPP2_ETH_TYPE_LEN,
         MVPP2_PRS_IPV4_HEAD | MVPP2_PRS_IPV4_IHL,
         MVPP2_PRS_IPV4_HEAD_MASK |
         MVPP2_PRS_IPV4_IHL_MASK);

 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_IP4);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_IP4,
     MVPP2_PRS_RI_L3_PROTO_MASK);

 mvpp2_prs_sram_shift_set(&pe, MVPP2_ETH_TYPE_LEN + 4,
     MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
      MVPP2_ETH_TYPE_LEN,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 0;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_L3_IP4,
    MVPP2_PRS_RI_L3_PROTO_MASK);
 mvpp2_prs_hw_write(priv, &pe);


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 pe.index = tid;

 mvpp2_prs_tcam_data_byte_set(&pe, MVPP2_ETH_TYPE_LEN,
         MVPP2_PRS_IPV4_HEAD,
         MVPP2_PRS_IPV4_HEAD_MASK);


 pe.sram[MVPP2_PRS_SRAM_RI_WORD] = 0x0;
 pe.sram[MVPP2_PRS_SRAM_RI_CTRL_WORD] = 0x0;
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_IP4_OPT,
     MVPP2_PRS_RI_L3_PROTO_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 0;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_L3_IP4_OPT,
    MVPP2_PRS_RI_L3_PROTO_MASK);
 mvpp2_prs_hw_write(priv, &pe);


 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_L2);
 pe.index = tid;

 mvpp2_prs_match_etype(&pe, 0, ETH_P_IPV6);


 mvpp2_prs_sram_shift_set(&pe, MVPP2_ETH_TYPE_LEN + 8 +
     MVPP2_MAX_L3_ADDR_SIZE,
     MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_IP6);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_IP6,
     MVPP2_PRS_RI_L3_PROTO_MASK);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
      MVPP2_ETH_TYPE_LEN,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);

 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 0;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_L3_IP6,
    MVPP2_PRS_RI_L3_PROTO_MASK);
 mvpp2_prs_hw_write(priv, &pe);


 memset(&pe, 0, sizeof(struct mvpp2_prs_entry));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_L2);
 pe.index = MVPP2_PE_ETH_TYPE_UN;


 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_UN,
     MVPP2_PRS_RI_L3_PROTO_MASK);

 mvpp2_prs_sram_offset_set(&pe, MVPP2_PRS_SRAM_UDF_TYPE_L3,
      MVPP2_ETH_TYPE_LEN,
      MVPP2_PRS_SRAM_OP_SEL_UDF_ADD);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_L2);
 priv->prs_shadow[pe.index].udf = MVPP2_PRS_UDF_L2_DEF;
 priv->prs_shadow[pe.index].finish = 1;
 mvpp2_prs_shadow_ri_set(priv, pe.index, MVPP2_PRS_RI_L3_UN,
    MVPP2_PRS_RI_L3_PROTO_MASK);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
