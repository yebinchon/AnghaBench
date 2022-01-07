
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {int octeon_id; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CN23XX_RST_SOFT_RST ;
 int CN23XX_SLI_SCRATCH1 ;
 int CN23XX_WIN_WR_MASK_REG ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ) ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;
 int mdelay (int) ;
 scalar_t__ octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static int cn23xx_pf_soft_reset(struct octeon_device *oct)
{
 octeon_write_csr64(oct, CN23XX_WIN_WR_MASK_REG, 0xFF);

 dev_dbg(&oct->pci_dev->dev, "OCTEON[%d]: BIST enabled for CN23XX soft reset\n",
  oct->octeon_id);

 octeon_write_csr64(oct, CN23XX_SLI_SCRATCH1, 0x1234ULL);


 lio_pci_readq(oct, CN23XX_RST_SOFT_RST);
 lio_pci_writeq(oct, 1, CN23XX_RST_SOFT_RST);


 mdelay(100);

 if (octeon_read_csr64(oct, CN23XX_SLI_SCRATCH1)) {
  dev_err(&oct->pci_dev->dev, "OCTEON[%d]: Soft reset failed\n",
   oct->octeon_id);
  return 1;
 }

 dev_dbg(&oct->pci_dev->dev, "OCTEON[%d]: Reset completed\n",
  oct->octeon_id);


 octeon_write_csr64(oct, CN23XX_WIN_WR_MASK_REG, 0xFF);

 return 0;
}
