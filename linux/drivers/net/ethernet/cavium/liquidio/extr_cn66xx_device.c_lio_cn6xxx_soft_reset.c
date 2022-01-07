
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CN6XXX_CIU_SOFT_BIST ;
 int CN6XXX_CIU_SOFT_RST ;
 int CN6XXX_SLI_SCRATCH1 ;
 int CN6XXX_WIN_WR_MASK_REG ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;
 int mdelay (int) ;
 scalar_t__ octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

int lio_cn6xxx_soft_reset(struct octeon_device *oct)
{
 octeon_write_csr64(oct, CN6XXX_WIN_WR_MASK_REG, 0xFF);

 dev_dbg(&oct->pci_dev->dev, "BIST enabled for soft reset\n");

 lio_pci_writeq(oct, 1, CN6XXX_CIU_SOFT_BIST);
 octeon_write_csr64(oct, CN6XXX_SLI_SCRATCH1, 0x1234ULL);

 lio_pci_readq(oct, CN6XXX_CIU_SOFT_RST);
 lio_pci_writeq(oct, 1, CN6XXX_CIU_SOFT_RST);


 mdelay(100);

 if (octeon_read_csr64(oct, CN6XXX_SLI_SCRATCH1)) {
  dev_err(&oct->pci_dev->dev, "Soft reset failed\n");
  return 1;
 }

 dev_dbg(&oct->pci_dev->dev, "Reset completed\n");
 octeon_write_csr64(oct, CN6XXX_WIN_WR_MASK_REG, 0xFF);

 return 0;
}
