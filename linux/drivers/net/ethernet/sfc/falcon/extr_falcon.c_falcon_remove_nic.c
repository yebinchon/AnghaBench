
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {int * pci_dev2; } ;
struct falcon_board {int i2c_adap; TYPE_1__* type; } ;
struct ef4_nic {struct falcon_nic_data* nic_data; int irq_status; } ;
struct TYPE_2__ {int (* fini ) (struct ef4_nic*) ;} ;


 int RESET_TYPE_ALL ;
 int __falcon_reset_hw (struct ef4_nic*,int ) ;
 int ef4_nic_free_buffer (struct ef4_nic*,int *) ;
 struct falcon_board* falcon_board (struct ef4_nic*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct falcon_nic_data*) ;
 int memset (int *,int ,int) ;
 int pci_dev_put (int *) ;
 int stub1 (struct ef4_nic*) ;

__attribute__((used)) static void falcon_remove_nic(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 struct falcon_board *board = falcon_board(efx);

 board->type->fini(efx);


 i2c_del_adapter(&board->i2c_adap);
 memset(&board->i2c_adap, 0, sizeof(board->i2c_adap));

 ef4_nic_free_buffer(efx, &efx->irq_status);

 __falcon_reset_hw(efx, RESET_TYPE_ALL);


 if (nic_data->pci_dev2) {
  pci_dev_put(nic_data->pci_dev2);
  nic_data->pci_dev2 = ((void*)0);
 }


 kfree(efx->nic_data);
 efx->nic_data = ((void*)0);
}
