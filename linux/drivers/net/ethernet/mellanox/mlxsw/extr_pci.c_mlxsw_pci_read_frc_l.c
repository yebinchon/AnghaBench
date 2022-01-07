
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlxsw_pci {int free_running_clock_offset; } ;


 int FREE_RUNNING_CLOCK_L (int ) ;
 int mlxsw_pci_read32 (struct mlxsw_pci*,int ) ;

__attribute__((used)) static u32 mlxsw_pci_read_frc_l(void *bus_priv)
{
 struct mlxsw_pci *mlxsw_pci = bus_priv;
 u64 frc_offset;

 frc_offset = mlxsw_pci->free_running_clock_offset;
 return mlxsw_pci_read32(mlxsw_pci, FREE_RUNNING_CLOCK_L(frc_offset));
}
