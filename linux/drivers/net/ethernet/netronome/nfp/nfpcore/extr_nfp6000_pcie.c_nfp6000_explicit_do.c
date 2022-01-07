
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct nfp_cpp_explicit_command {int siga; int sigb; scalar_t__ signal_master; scalar_t__ signal_ref; scalar_t__ data_master; int data_ref; int byte_mask; int len; int cpp_id; scalar_t__ sigb_mode; scalar_t__ siga_mode; } ;
struct nfp_cpp_explicit {int dummy; } ;
struct TYPE_5__ {scalar_t__ csr; } ;
struct TYPE_4__ {scalar_t__ master_id; scalar_t__ signal_ref; } ;
struct nfp6000_pcie {int pdev; TYPE_2__ iomem; TYPE_1__ expl; } ;
struct TYPE_6__ {int group; int area; } ;
struct nfp6000_explicit_priv {int bitsize; scalar_t__ addr; TYPE_3__ bar; struct nfp6000_pcie* nfp; } ;


 int NFP_CPP_ID_ACTION_of (int ) ;
 int NFP_CPP_ID_TARGET_of (int ) ;
 int NFP_CPP_ID_TOKEN_of (int ) ;
 scalar_t__ NFP_PCIE_BAR_EXPLICIT_BAR0 (int,int) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR0_Address (int) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR0_SignalType (int) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR0_Token (int ) ;
 scalar_t__ NFP_PCIE_BAR_EXPLICIT_BAR1 (int,int) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR1_DataMaster (scalar_t__) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR1_DataRef (int) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR1_SignalRef (scalar_t__) ;
 scalar_t__ NFP_PCIE_BAR_EXPLICIT_BAR2 (int,int) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR2_Action (int ) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR2_ByteMask (int ) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR2_Length (int ) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR2_SignalMaster (scalar_t__) ;
 int NFP_PCIE_BAR_EXPLICIT_BAR2_Target (int ) ;
 struct nfp6000_explicit_priv* nfp_cpp_explicit_priv (struct nfp_cpp_explicit*) ;
 int pci_write_config_dword (int ,scalar_t__,int) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
nfp6000_explicit_do(struct nfp_cpp_explicit *expl,
      const struct nfp_cpp_explicit_command *cmd, u64 address)
{
 struct nfp6000_explicit_priv *priv = nfp_cpp_explicit_priv(expl);
 u8 signal_master, signal_ref, data_master;
 struct nfp6000_pcie *nfp = priv->nfp;
 int sigmask = 0;
 u16 data_ref;
 u32 csr[3];

 if (cmd->siga_mode)
  sigmask |= 1 << cmd->siga;
 if (cmd->sigb_mode)
  sigmask |= 1 << cmd->sigb;

 signal_master = cmd->signal_master;
 if (!signal_master)
  signal_master = nfp->expl.master_id;

 signal_ref = cmd->signal_ref;
 if (signal_master == nfp->expl.master_id)
  signal_ref = nfp->expl.signal_ref +
   ((priv->bar.group * 4 + priv->bar.area) << 1);

 data_master = cmd->data_master;
 if (!data_master)
  data_master = nfp->expl.master_id;

 data_ref = cmd->data_ref;
 if (data_master == nfp->expl.master_id)
  data_ref = 0x1000 +
   (priv->bar.group << 9) + (priv->bar.area << 7);

 csr[0] = NFP_PCIE_BAR_EXPLICIT_BAR0_SignalType(sigmask) |
  NFP_PCIE_BAR_EXPLICIT_BAR0_Token(
   NFP_CPP_ID_TOKEN_of(cmd->cpp_id)) |
  NFP_PCIE_BAR_EXPLICIT_BAR0_Address(address >> 16);

 csr[1] = NFP_PCIE_BAR_EXPLICIT_BAR1_SignalRef(signal_ref) |
  NFP_PCIE_BAR_EXPLICIT_BAR1_DataMaster(data_master) |
  NFP_PCIE_BAR_EXPLICIT_BAR1_DataRef(data_ref);

 csr[2] = NFP_PCIE_BAR_EXPLICIT_BAR2_Target(
   NFP_CPP_ID_TARGET_of(cmd->cpp_id)) |
  NFP_PCIE_BAR_EXPLICIT_BAR2_Action(
   NFP_CPP_ID_ACTION_of(cmd->cpp_id)) |
  NFP_PCIE_BAR_EXPLICIT_BAR2_Length(cmd->len) |
  NFP_PCIE_BAR_EXPLICIT_BAR2_ByteMask(cmd->byte_mask) |
  NFP_PCIE_BAR_EXPLICIT_BAR2_SignalMaster(signal_master);

 if (nfp->iomem.csr) {
  writel(csr[0], nfp->iomem.csr +
         NFP_PCIE_BAR_EXPLICIT_BAR0(priv->bar.group,
        priv->bar.area));
  writel(csr[1], nfp->iomem.csr +
         NFP_PCIE_BAR_EXPLICIT_BAR1(priv->bar.group,
        priv->bar.area));
  writel(csr[2], nfp->iomem.csr +
         NFP_PCIE_BAR_EXPLICIT_BAR2(priv->bar.group,
        priv->bar.area));

  readl(nfp->iomem.csr +
        NFP_PCIE_BAR_EXPLICIT_BAR0(priv->bar.group,
       priv->bar.area));
  readl(nfp->iomem.csr +
        NFP_PCIE_BAR_EXPLICIT_BAR1(priv->bar.group,
       priv->bar.area));
  readl(nfp->iomem.csr +
        NFP_PCIE_BAR_EXPLICIT_BAR2(priv->bar.group,
       priv->bar.area));
 } else {
  pci_write_config_dword(nfp->pdev, 0x400 +
           NFP_PCIE_BAR_EXPLICIT_BAR0(
            priv->bar.group, priv->bar.area),
           csr[0]);

  pci_write_config_dword(nfp->pdev, 0x400 +
           NFP_PCIE_BAR_EXPLICIT_BAR1(
            priv->bar.group, priv->bar.area),
           csr[1]);

  pci_write_config_dword(nfp->pdev, 0x400 +
           NFP_PCIE_BAR_EXPLICIT_BAR2(
            priv->bar.group, priv->bar.area),
           csr[2]);
 }


 readb(priv->addr + (address & ((1 << priv->bitsize) - 1)));

 return sigmask;
}
