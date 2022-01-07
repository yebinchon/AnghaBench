
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {scalar_t__ index; } ;
struct mvpp2 {int dummy; } ;
typedef int pe ;


 int MVPP2_MAX_PORTS ;
 scalar_t__ MVPP2_PE_FIRST_DEFAULT_FLOW ;
 int MVPP2_PRS_FLOW_ID_MASK ;
 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_SRAM_LU_DONE_BIT ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,scalar_t__,int ) ;
 int mvpp2_prs_sram_ai_update (struct mvpp2_prs_entry*,int,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;

__attribute__((used)) static void mvpp2_prs_def_flow_init(struct mvpp2 *priv)
{
 struct mvpp2_prs_entry pe;
 int port;

 for (port = 0; port < MVPP2_MAX_PORTS; port++) {
  memset(&pe, 0, sizeof(pe));
  mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_FLOWS);
  pe.index = MVPP2_PE_FIRST_DEFAULT_FLOW - port;


  mvpp2_prs_tcam_port_map_set(&pe, 0);


  mvpp2_prs_sram_ai_update(&pe, port, MVPP2_PRS_FLOW_ID_MASK);
  mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_DONE_BIT, 1);


  mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_FLOWS);
  mvpp2_prs_hw_write(priv, &pe);
 }
}
