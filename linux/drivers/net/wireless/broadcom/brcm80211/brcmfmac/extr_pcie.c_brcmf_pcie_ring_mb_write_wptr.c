
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {scalar_t__ state; int (* write_ptr ) (struct brcmf_pciedev_info*,int ,int ) ;} ;
struct brcmf_commonring {int w_ptr; int r_ptr; } ;
struct brcmf_pcie_ringbuf {int w_idx_addr; int id; struct brcmf_commonring commonring; struct brcmf_pciedev_info* devinfo; } ;


 scalar_t__ BRCMFMAC_PCIE_STATE_UP ;
 int EIO ;
 int PCIE ;
 int brcmf_dbg (int ,char*,int ,int ,int ) ;
 int stub1 (struct brcmf_pciedev_info*,int ,int ) ;

__attribute__((used)) static int brcmf_pcie_ring_mb_write_wptr(void *ctx)
{
 struct brcmf_pcie_ringbuf *ring = (struct brcmf_pcie_ringbuf *)ctx;
 struct brcmf_pciedev_info *devinfo = ring->devinfo;
 struct brcmf_commonring *commonring = &ring->commonring;

 if (devinfo->state != BRCMFMAC_PCIE_STATE_UP)
  return -EIO;

 brcmf_dbg(PCIE, "W w_ptr %d (%d), ring %d\n", commonring->w_ptr,
    commonring->r_ptr, ring->id);

 devinfo->write_ptr(devinfo, ring->w_idx_addr, commonring->w_ptr);

 return 0;
}
