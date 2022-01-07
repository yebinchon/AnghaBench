
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_adapter {int dummy; } ;


 int atl1c_clean_rx_ring (struct atl1c_adapter*) ;
 int atl1c_clean_tx_ring (struct atl1c_adapter*,int ) ;
 int atl1c_trans_high ;
 int atl1c_trans_normal ;

__attribute__((used)) static void atl1c_reset_dma_ring(struct atl1c_adapter *adapter)
{

 atl1c_clean_tx_ring(adapter, atl1c_trans_normal);
 atl1c_clean_tx_ring(adapter, atl1c_trans_high);
 atl1c_clean_rx_ring(adapter);
}
