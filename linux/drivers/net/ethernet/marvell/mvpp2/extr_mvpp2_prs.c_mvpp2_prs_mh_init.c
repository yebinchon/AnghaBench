
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 int MVPP2_MH_SIZE ;
 int MVPP2_PE_MH_DEFAULT ;
 int MVPP2_PRS_LU_MAC ;
 int MVPP2_PRS_LU_MH ;
 int MVPP2_PRS_PORT_MASK ;
 int MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,int ,int ) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_shift_set (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static void mvpp2_prs_mh_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;

 memset(&pe, 0, sizeof(pe));

 pe.index = MVPP2_PE_MH_DEFAULT;
 mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_MH);
 mvpp2_prs_sram_shift_set(&pe, MVPP2_MH_SIZE,
     MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
 mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_MAC);


 mvpp2_prs_tcam_port_map_set(&pe, MVPP2_PRS_PORT_MASK);


 mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_MH);
 mvpp2_prs_hw_write(priv, &pe);
}
