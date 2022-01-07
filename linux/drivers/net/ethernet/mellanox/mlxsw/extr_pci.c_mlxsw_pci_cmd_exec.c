
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int tmp ;
struct TYPE_7__ {char* buf; int mapaddr; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_5__ {char* buf; int mapaddr; } ;
struct TYPE_8__ {int nopoll; int wait_done; int lock; TYPE_3__ out_mbox; TYPE_2__ comp; int wait; TYPE_1__ in_mbox; } ;
struct mlxsw_pci {TYPE_4__ cmd; } ;
typedef int dma_addr_t ;
typedef char __be32 ;


 int CIR_CTRL ;
 int CIR_IN_MODIFIER ;
 int CIR_IN_PARAM_HI ;
 int CIR_IN_PARAM_LO ;
 int CIR_OUT_PARAM_HI ;
 int CIR_OUT_PARAM_LO ;
 int CIR_TOKEN ;
 int EIO ;
 int ETIMEDOUT ;
 int MLXSW_CMD_STATUS_OK ;
 int MLXSW_PCI_CIR_CTRL_EVREQ_BIT ;
 int MLXSW_PCI_CIR_CTRL_GO_BIT ;
 int MLXSW_PCI_CIR_CTRL_OPCODE_MOD_SHIFT ;
 int MLXSW_PCI_CIR_CTRL_STATUS_SHIFT ;
 int MLXSW_PCI_CIR_TIMEOUT_MSECS ;
 int cond_resched () ;
 char cpu_to_be32 (int) ;
 unsigned long jiffies ;
 int lower_32_bits (int ) ;
 int memcpy (char*,char*,size_t) ;
 int mlxsw_pci_read32 (struct mlxsw_pci*,int ) ;
 int mlxsw_pci_write32 (struct mlxsw_pci*,int ,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int upper_32_bits (int ) ;
 int wait_event_timeout (int ,int,unsigned long) ;
 int wmb () ;

__attribute__((used)) static int mlxsw_pci_cmd_exec(void *bus_priv, u16 opcode, u8 opcode_mod,
         u32 in_mod, bool out_mbox_direct,
         char *in_mbox, size_t in_mbox_size,
         char *out_mbox, size_t out_mbox_size,
         u8 *p_status)
{
 struct mlxsw_pci *mlxsw_pci = bus_priv;
 dma_addr_t in_mapaddr = 0, out_mapaddr = 0;
 bool evreq = mlxsw_pci->cmd.nopoll;
 unsigned long timeout = msecs_to_jiffies(MLXSW_PCI_CIR_TIMEOUT_MSECS);
 bool *p_wait_done = &mlxsw_pci->cmd.wait_done;
 int err;

 *p_status = MLXSW_CMD_STATUS_OK;

 err = mutex_lock_interruptible(&mlxsw_pci->cmd.lock);
 if (err)
  return err;

 if (in_mbox) {
  memcpy(mlxsw_pci->cmd.in_mbox.buf, in_mbox, in_mbox_size);
  in_mapaddr = mlxsw_pci->cmd.in_mbox.mapaddr;
 }
 mlxsw_pci_write32(mlxsw_pci, CIR_IN_PARAM_HI, upper_32_bits(in_mapaddr));
 mlxsw_pci_write32(mlxsw_pci, CIR_IN_PARAM_LO, lower_32_bits(in_mapaddr));

 if (out_mbox)
  out_mapaddr = mlxsw_pci->cmd.out_mbox.mapaddr;
 mlxsw_pci_write32(mlxsw_pci, CIR_OUT_PARAM_HI, upper_32_bits(out_mapaddr));
 mlxsw_pci_write32(mlxsw_pci, CIR_OUT_PARAM_LO, lower_32_bits(out_mapaddr));

 mlxsw_pci_write32(mlxsw_pci, CIR_IN_MODIFIER, in_mod);
 mlxsw_pci_write32(mlxsw_pci, CIR_TOKEN, 0);

 *p_wait_done = 0;

 wmb();
 mlxsw_pci_write32(mlxsw_pci, CIR_CTRL,
     MLXSW_PCI_CIR_CTRL_GO_BIT |
     (evreq ? MLXSW_PCI_CIR_CTRL_EVREQ_BIT : 0) |
     (opcode_mod << MLXSW_PCI_CIR_CTRL_OPCODE_MOD_SHIFT) |
     opcode);

 if (!evreq) {
  unsigned long end;

  end = jiffies + timeout;
  do {
   u32 ctrl = mlxsw_pci_read32(mlxsw_pci, CIR_CTRL);

   if (!(ctrl & MLXSW_PCI_CIR_CTRL_GO_BIT)) {
    *p_wait_done = 1;
    *p_status = ctrl >> MLXSW_PCI_CIR_CTRL_STATUS_SHIFT;
    break;
   }
   cond_resched();
  } while (time_before(jiffies, end));
 } else {
  wait_event_timeout(mlxsw_pci->cmd.wait, *p_wait_done, timeout);
  *p_status = mlxsw_pci->cmd.comp.status;
 }

 err = 0;
 if (*p_wait_done) {
  if (*p_status)
   err = -EIO;
 } else {
  err = -ETIMEDOUT;
 }

 if (!err && out_mbox && out_mbox_direct) {




  __be32 tmp;

  if (!evreq) {
   tmp = cpu_to_be32(mlxsw_pci_read32(mlxsw_pci,
          CIR_OUT_PARAM_HI));
   memcpy(out_mbox, &tmp, sizeof(tmp));
   tmp = cpu_to_be32(mlxsw_pci_read32(mlxsw_pci,
          CIR_OUT_PARAM_LO));
   memcpy(out_mbox + sizeof(tmp), &tmp, sizeof(tmp));
  }
 } else if (!err && out_mbox) {
  memcpy(out_mbox, mlxsw_pci->cmd.out_mbox.buf, out_mbox_size);
 }

 mutex_unlock(&mlxsw_pci->cmd.lock);

 return err;
}
