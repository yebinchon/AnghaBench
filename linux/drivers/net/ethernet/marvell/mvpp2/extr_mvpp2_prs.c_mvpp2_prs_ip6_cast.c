
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 int EINVAL ;
 int MVPP2_PE_FIRST_FREE_TID ;
 int MVPP2_PE_LAST_FREE_TID ;
 int MVPP2_PRS_IPV6_MC ;
 int MVPP2_PRS_IPV6_MC_MASK ;
 int MVPP2_PRS_IPV6_NO_EXT_AI_BIT ;
 unsigned short MVPP2_PRS_L3_MULTI_CAST ;
 int MVPP2_PRS_LU_IP6 ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_RI_L3_ADDR_MASK ;
 int MVPP2_PRS_RI_L3_MCAST ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int ,int ,int ) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static int mvpp2_prs_ip6_cast(struct mvpp2 *priv, unsigned short l3_cast)
{
 struct mvpp2_prs_entry pe;
 int tid;

 if (l3_cast != MVPP2_PRS_L3_MULTI_CAST)
  return -EINVAL;

 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_IP6);
 pe.index = tid;


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_IP6);
 mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_MCAST,
     MVPP2_PRS_RI_L3_ADDR_MASK);
 mvpp2_prs_sram_ai_update(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
     MVPP2_PRS_IPV6_NO_EXT_AI_BIT);

 mvpp2_prs_sram_shift_set(&pe, -18, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

 mvpp2_prs_tcam_data_byte_set(&pe, 0, MVPP2_PRS_IPV6_MC,
         MVPP2_PRS_IPV6_MC_MASK);
 mvpp2_prs_tcam_ai_update(&pe, 0, MVPP2_PRS_IPV6_NO_EXT_AI_BIT);

 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP6);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
