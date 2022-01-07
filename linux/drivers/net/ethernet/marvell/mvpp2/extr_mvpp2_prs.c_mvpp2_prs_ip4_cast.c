
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
 int MVPP2_PRS_IPV4_BC_MASK ;
 int MVPP2_PRS_IPV4_DIP_AI_BIT ;
 int MVPP2_PRS_IPV4_MC ;
 int MVPP2_PRS_IPV4_MC_MASK ;


 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_LU_IP4 ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_RI_L3_ADDR_MASK ;
 int MVPP2_PRS_RI_L3_BCAST ;
 int MVPP2_PRS_RI_L3_MCAST ;
 int MVPP2_PRS_SRAM_LU_GEN_BIT ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_ai_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int,int,int) ;
 int mvpp2_prs_tcam_first_free (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static int mvpp2_prs_ip4_cast(struct mvpp2 *priv, unsigned short l3_cast)
{
 struct mvpp2_prs_entry pe;
 int mask, tid;

 tid = mvpp2_prs_tcam_first_free(priv, MVPP2_PE_FIRST_FREE_TID,
     MVPP2_PE_LAST_FREE_TID);
 if (tid < 0)
  return tid;

 memset(&pe, 0, sizeof(pe));
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_IP4);
 pe.index = tid;

 switch (l3_cast) {
 case 128:
  mvpp2_prs_tcam_data_byte_set(&pe, 0, MVPP2_PRS_IPV4_MC,
          MVPP2_PRS_IPV4_MC_MASK);
  mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_MCAST,
      MVPP2_PRS_RI_L3_ADDR_MASK);
  break;
 case 129:
  mask = MVPP2_PRS_IPV4_BC_MASK;
  mvpp2_prs_tcam_data_byte_set(&pe, 0, mask, mask);
  mvpp2_prs_tcam_data_byte_set(&pe, 1, mask, mask);
  mvpp2_prs_tcam_data_byte_set(&pe, 2, mask, mask);
  mvpp2_prs_tcam_data_byte_set(&pe, 3, mask, mask);
  mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_L3_BCAST,
      MVPP2_PRS_RI_L3_ADDR_MASK);
  break;
 default:
  return -EINVAL;
 }


 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
 mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);

 mvpp2_prs_tcam_ai_update(&pe, MVPP2_PRS_IPV4_DIP_AI_BIT,
     MVPP2_PRS_IPV4_DIP_AI_BIT);

 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_IP4);
 mvpp2_prs_hw_write(priv, &pe);

 return 0;
}
