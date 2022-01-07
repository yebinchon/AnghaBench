
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drv_ctl_io {int dma_addr; int offset; } ;
struct TYPE_2__ {struct drv_ctl_io io; } ;
struct drv_ctl_info {int cmd; TYPE_1__ data; } ;
struct cnic_local {struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int (* drv_ctl ) (int ,struct drv_ctl_info*) ;} ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
typedef int dma_addr_t ;


 int DRV_CTL_CTXTBL_WR_CMD ;
 int memset (struct drv_ctl_info*,int ,int) ;
 int stub1 (int ,struct drv_ctl_info*) ;

__attribute__((used)) static void cnic_ctx_tbl_wr(struct cnic_dev *dev, u32 off, dma_addr_t addr)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 struct drv_ctl_info info;
 struct drv_ctl_io *io = &info.data.io;

 memset(&info, 0, sizeof(struct drv_ctl_info));
 info.cmd = DRV_CTL_CTXTBL_WR_CMD;
 io->offset = off;
 io->dma_addr = addr;
 ethdev->drv_ctl(dev->netdev, &info);
}
