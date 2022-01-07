
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {scalar_t__ state; } ;
struct brcmf_pcie_ringbuf {struct brcmf_pciedev_info* devinfo; } ;


 scalar_t__ BRCMFMAC_PCIE_STATE_UP ;
 int BRCMF_PCIE_PCIE2REG_H2D_MAILBOX_0 ;
 int EIO ;
 int PCIE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;

__attribute__((used)) static int brcmf_pcie_ring_mb_ring_bell(void *ctx)
{
 struct brcmf_pcie_ringbuf *ring = (struct brcmf_pcie_ringbuf *)ctx;
 struct brcmf_pciedev_info *devinfo = ring->devinfo;

 if (devinfo->state != BRCMFMAC_PCIE_STATE_UP)
  return -EIO;

 brcmf_dbg(PCIE, "RING !\n");

 brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_H2D_MAILBOX_0, 1);

 return 0;
}
