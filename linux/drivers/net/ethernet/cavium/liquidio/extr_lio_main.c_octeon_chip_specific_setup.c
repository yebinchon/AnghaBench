
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int max_vfs; } ;
struct octeon_device {int rev_id; TYPE_2__* pci_dev; TYPE_1__ sriov_info; int chip_id; } ;
struct TYPE_7__ {int card_name; } ;
struct TYPE_6__ {int dev; } ;


 int LIQUIDIO_VERSION ;

 int OCTEON_CN23XX_PF_VID ;
 int OCTEON_CN66XX ;

 int OCTEON_CN68XX ;

 int OCTEON_MAJOR_REV (struct octeon_device*) ;
 int OCTEON_MINOR_REV (struct octeon_device*) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,char*,int ,int ,int ,int ) ;
 int lio_setup_cn66xx_octeon_device (struct octeon_device*) ;
 int lio_setup_cn68xx_octeon_device (struct octeon_device*) ;
 TYPE_4__* octeon_get_conf (struct octeon_device*) ;
 int pci_read_config_dword (TYPE_2__*,int,int*) ;
 int pci_sriov_set_totalvfs (TYPE_2__*,int ) ;
 int setup_cn23xx_octeon_pf_device (struct octeon_device*) ;

__attribute__((used)) static int octeon_chip_specific_setup(struct octeon_device *oct)
{
 u32 dev_id, rev_id;
 int ret = 1;
 char *s;

 pci_read_config_dword(oct->pci_dev, 0, &dev_id);
 pci_read_config_dword(oct->pci_dev, 8, &rev_id);
 oct->rev_id = rev_id & 0xff;

 switch (dev_id) {
 case 128:
  oct->chip_id = OCTEON_CN68XX;
  ret = lio_setup_cn68xx_octeon_device(oct);
  s = "CN68XX";
  break;

 case 129:
  oct->chip_id = OCTEON_CN66XX;
  ret = lio_setup_cn66xx_octeon_device(oct);
  s = "CN66XX";
  break;

 case 130:
  oct->chip_id = OCTEON_CN23XX_PF_VID;
  ret = setup_cn23xx_octeon_pf_device(oct);
  if (ret)
   break;





  s = "CN23XX";
  break;

 default:
  s = "?";
  dev_err(&oct->pci_dev->dev, "Unknown device found (dev_id: %x)\n",
   dev_id);
 }

 if (!ret)
  dev_info(&oct->pci_dev->dev, "%s PASS%d.%d %s Version: %s\n", s,
    OCTEON_MAJOR_REV(oct),
    OCTEON_MINOR_REV(oct),
    octeon_get_conf(oct)->card_name,
    LIQUIDIO_VERSION);

 return ret;
}
