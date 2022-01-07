
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_bus_info {int psid; int vsd; } ;
struct mlxsw_pci {int core; struct mlxsw_bus_info bus_info; } ;


 int mlxsw_cmd_boardinfo (int ,char*) ;
 int mlxsw_cmd_mbox_boardinfo_psid_memcpy_from (char*,int ) ;
 int mlxsw_cmd_mbox_boardinfo_vsd_memcpy_from (char*,int ) ;
 int mlxsw_cmd_mbox_zero (char*) ;

__attribute__((used)) static int mlxsw_pci_boardinfo(struct mlxsw_pci *mlxsw_pci, char *mbox)
{
 struct mlxsw_bus_info *bus_info = &mlxsw_pci->bus_info;
 int err;

 mlxsw_cmd_mbox_zero(mbox);
 err = mlxsw_cmd_boardinfo(mlxsw_pci->core, mbox);
 if (err)
  return err;
 mlxsw_cmd_mbox_boardinfo_vsd_memcpy_from(mbox, bus_info->vsd);
 mlxsw_cmd_mbox_boardinfo_psid_memcpy_from(mbox, bus_info->psid);
 return 0;
}
