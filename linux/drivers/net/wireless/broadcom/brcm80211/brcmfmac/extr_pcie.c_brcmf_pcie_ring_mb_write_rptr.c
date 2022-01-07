
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {scalar_t__ state; int (* write_ptr ) (struct brcmf_pciedev_info*,int ,int ) ;} ;
struct brcmf_commonring {int r_ptr; int w_ptr; } ;
struct brcmf_pcie_ringbuf {int r_idx_addr; int id; struct brcmf_commonring commonring; struct brcmf_pciedev_info* devinfo; } ;


 scalar_t__ BRCMFMAC_PCIE_STATE_UP ;
 int EIO ;
 int PCIE ;
 int brcmf_dbg (int ,char*,int ,int ,int ) ;
 int stub1 (struct brcmf_pciedev_info*,int ,int ) ;

__attribute__((used)) static int brcmf_pcie_ring_mb_write_rptr(void *ctx)
{
 struct brcmf_pcie_ringbuf *ring = (struct brcmf_pcie_ringbuf *)ctx;
 struct brcmf_pciedev_info *devinfo = ring->devinfo;
 struct brcmf_commonring *commonring = &ring->commonring;

 if (devinfo->state != BRCMFMAC_PCIE_STATE_UP)
  return -EIO;

 brcmf_dbg(PCIE, "W r_ptr %d (%d), ring %d\n", commonring->r_ptr,
    commonring->w_ptr, ring->id);

 devinfo->write_ptr(devinfo, ring->r_idx_addr, commonring->r_ptr);

 return 0;
}
