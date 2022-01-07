
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_INT_COALESCING ;
 int IWL_HOST_INT_TIMEOUT_DEF ;
 int _iwl_pcie_rx_init (struct iwl_trans*) ;
 int iwl_write8 (struct iwl_trans*,int ,int ) ;

int iwl_pcie_gen2_rx_init(struct iwl_trans *trans)
{

 iwl_write8(trans, CSR_INT_COALESCING, IWL_HOST_INT_TIMEOUT_DEF);





 return _iwl_pcie_rx_init(trans);
}
