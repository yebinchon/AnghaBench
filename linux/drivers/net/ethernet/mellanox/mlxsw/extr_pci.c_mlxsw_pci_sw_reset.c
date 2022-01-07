
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_device_id {scalar_t__ device; } ;
struct mlxsw_pci {int core; } ;


 int EBUSY ;
 int FW_READY ;
 int MLXSW_PCI_FW_READY_MAGIC ;
 int MLXSW_PCI_FW_READY_MASK ;
 int MLXSW_PCI_SW_RESET_TIMEOUT_MSECS ;
 int MLXSW_PCI_SW_RESET_WAIT_MSECS ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_MRSR_LEN ;
 scalar_t__ PCI_DEVICE_ID_MELLANOX_SWITCHX2 ;
 int cond_resched () ;
 unsigned long jiffies ;
 int mlxsw_pci_read32 (struct mlxsw_pci*,int ) ;
 int mlxsw_reg_mrsr_pack (char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mrsr ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int mlxsw_pci_sw_reset(struct mlxsw_pci *mlxsw_pci,
         const struct pci_device_id *id)
{
 unsigned long end;
 char mrsr_pl[MLXSW_REG_MRSR_LEN];
 int err;

 mlxsw_reg_mrsr_pack(mrsr_pl);
 err = mlxsw_reg_write(mlxsw_pci->core, MLXSW_REG(mrsr), mrsr_pl);
 if (err)
  return err;
 if (id->device == PCI_DEVICE_ID_MELLANOX_SWITCHX2) {
  msleep(MLXSW_PCI_SW_RESET_TIMEOUT_MSECS);
  return 0;
 }


 msleep(MLXSW_PCI_SW_RESET_WAIT_MSECS);

 end = jiffies + msecs_to_jiffies(MLXSW_PCI_SW_RESET_TIMEOUT_MSECS);
 do {
  u32 val = mlxsw_pci_read32(mlxsw_pci, FW_READY);

  if ((val & MLXSW_PCI_FW_READY_MASK) == MLXSW_PCI_FW_READY_MAGIC)
   return 0;
  cond_resched();
 } while (time_before(jiffies, end));
 return -EBUSY;
}
