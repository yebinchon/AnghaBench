
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct alx_hw {TYPE_1__* pdev; } ;
struct alx_priv {int num_txq; struct alx_hw hw; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;


 int ALX_MSI_ID_MAP ;
 int ALX_MSI_MAP_TBL1 ;
 int ALX_MSI_MAP_TBL1_RXQ0_SHIFT ;
 int ALX_MSI_MAP_TBL2 ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int* txq_vec_mapping_shift ;

__attribute__((used)) static void alx_config_vector_mapping(struct alx_priv *alx)
{
 struct alx_hw *hw = &alx->hw;
 u32 tbl[2] = {0, 0};
 int i, vector, idx, shift;

 if (alx->hw.pdev->msix_enabled) {

  for (i = 0, vector = 1; i < alx->num_txq; i++, vector++) {
   idx = txq_vec_mapping_shift[i * 2];
   shift = txq_vec_mapping_shift[i * 2 + 1];
   tbl[idx] |= vector << shift;
  }


  tbl[0] |= 1 << ALX_MSI_MAP_TBL1_RXQ0_SHIFT;
 }

 alx_write_mem32(hw, ALX_MSI_MAP_TBL1, tbl[0]);
 alx_write_mem32(hw, ALX_MSI_MAP_TBL2, tbl[1]);
 alx_write_mem32(hw, ALX_MSI_ID_MAP, 0);
}
