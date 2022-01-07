
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pciedev_info {scalar_t__ state; int (* read_ptr ) (struct brcmf_pciedev_info*,int ) ;} ;
struct brcmf_commonring {int r_ptr; int w_ptr; } ;
struct brcmf_pcie_ringbuf {int id; int w_idx_addr; struct brcmf_commonring commonring; struct brcmf_pciedev_info* devinfo; } ;


 scalar_t__ BRCMFMAC_PCIE_STATE_UP ;
 int EIO ;
 int PCIE ;
 int brcmf_dbg (int ,char*,int ,int ,int ) ;
 int stub1 (struct brcmf_pciedev_info*,int ) ;

__attribute__((used)) static int brcmf_pcie_ring_mb_update_wptr(void *ctx)
{
 struct brcmf_pcie_ringbuf *ring = (struct brcmf_pcie_ringbuf *)ctx;
 struct brcmf_pciedev_info *devinfo = ring->devinfo;
 struct brcmf_commonring *commonring = &ring->commonring;

 if (devinfo->state != BRCMFMAC_PCIE_STATE_UP)
  return -EIO;

 commonring->w_ptr = devinfo->read_ptr(devinfo, ring->w_idx_addr);

 brcmf_dbg(PCIE, "R w_ptr %d (%d), ring %d\n", commonring->w_ptr,
    commonring->r_ptr, ring->id);

 return 0;
}
