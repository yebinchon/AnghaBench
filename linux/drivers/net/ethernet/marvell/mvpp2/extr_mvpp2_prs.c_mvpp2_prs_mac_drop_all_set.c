
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_prs_entry {size_t index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef int pe ;
struct TYPE_2__ {scalar_t__ valid; } ;


 size_t MVPP2_PE_DROP_ALL ;
 int MVPP2_PRS_LU_FLOWS ;
 int MVPP2_PRS_LU_MAC ;
 int MVPP2_PRS_RI_DROP_MASK ;
 int MVPP2_PRS_SRAM_LU_GEN_BIT ;
 int memset (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_hw_write (struct mvpp2*,struct mvpp2_prs_entry*) ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,size_t) ;
 int mvpp2_prs_shadow_set (struct mvpp2*,size_t,int ) ;
 int mvpp2_prs_sram_bits_set (struct mvpp2_prs_entry*,int ,int) ;
 int mvpp2_prs_sram_next_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_sram_ri_update (struct mvpp2_prs_entry*,int ,int ) ;
 int mvpp2_prs_tcam_lu_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_map_set (struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_port_set (struct mvpp2_prs_entry*,int,int) ;

__attribute__((used)) static void mvpp2_prs_mac_drop_all_set(struct mvpp2 *priv, int port, bool add)
{
 struct mvpp2_prs_entry pe;

 if (priv->prs_shadow[MVPP2_PE_DROP_ALL].valid) {

  mvpp2_prs_init_from_hw(priv, &pe, MVPP2_PE_DROP_ALL);
 } else {

  memset(&pe, 0, sizeof(pe));
  mvpp2_prs_tcam_lu_set(&pe, MVPP2_PRS_LU_MAC);
  pe.index = MVPP2_PE_DROP_ALL;


  mvpp2_prs_sram_ri_update(&pe, MVPP2_PRS_RI_DROP_MASK,
      MVPP2_PRS_RI_DROP_MASK);

  mvpp2_prs_sram_bits_set(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
  mvpp2_prs_sram_next_lu_set(&pe, MVPP2_PRS_LU_FLOWS);


  mvpp2_prs_shadow_set(priv, pe.index, MVPP2_PRS_LU_MAC);


  mvpp2_prs_tcam_port_map_set(&pe, 0);
 }


 mvpp2_prs_tcam_port_set(&pe, port, add);

 mvpp2_prs_hw_write(priv, &pe);
}
