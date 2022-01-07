
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_pf {TYPE_1__* pdev; int hw; } ;
struct TYPE_2__ {int dev; } ;


 int GLPCI_CNF2 ;
 int GLPCI_CNF2_CACHELINE_SIZE_M ;
 int ICE_CACHE_LINE_BYTES ;
 int dev_warn (int *,char*,int ) ;
 int rd32 (int *,int ) ;

__attribute__((used)) static void ice_verify_cacheline_size(struct ice_pf *pf)
{
 if (rd32(&pf->hw, GLPCI_CNF2) & GLPCI_CNF2_CACHELINE_SIZE_M)
  dev_warn(&pf->pdev->dev,
    "%d Byte cache line assumption is invalid, driver may have Tx timeouts!\n",
    ICE_CACHE_LINE_BYTES);
}
