
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_tx_info {int dummy; } ;
struct mlxsw_pci_queue {int dummy; } ;
struct mlxsw_pci {int dummy; } ;


 int mlxsw_pci_queue_elem_info_producer_get (struct mlxsw_pci_queue*) ;
 struct mlxsw_pci_queue* mlxsw_pci_sdq_pick (struct mlxsw_pci*,struct mlxsw_tx_info const*) ;

__attribute__((used)) static bool mlxsw_pci_skb_transmit_busy(void *bus_priv,
     const struct mlxsw_tx_info *tx_info)
{
 struct mlxsw_pci *mlxsw_pci = bus_priv;
 struct mlxsw_pci_queue *q = mlxsw_pci_sdq_pick(mlxsw_pci, tx_info);

 return !mlxsw_pci_queue_elem_info_producer_get(q);
}
