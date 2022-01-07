
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u64 ;
struct TYPE_7__ {int cmd; int resp_needed; int len; void* type; int params; } ;
struct TYPE_8__ {TYPE_3__ s; } ;
struct octeon_mbox_cmd {int * data; TYPE_4__ msg; } ;
struct octeon_mbox {size_t q_no; struct octeon_device* oct_dev; } ;
struct TYPE_5__ {int * dpiring_to_vfpcidev_lut; } ;
struct octeon_device {TYPE_2__* pci_dev; TYPE_1__ sriov_info; int pfvf_hsword; } ;
struct oct_vf_stats {int dummy; } ;
struct lio_version {int micro; int minor; int major; } ;
struct TYPE_6__ {int dev; } ;


 int LIQUIDIO_BASE_MAJOR_VERSION ;
 int LIQUIDIO_BASE_MICRO_VERSION ;
 int LIQUIDIO_BASE_MINOR_VERSION ;
 int OCTEON_CN23XX_VF (struct octeon_device*) ;

 void* OCTEON_MBOX_RESPONSE ;



 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,size_t) ;
 int get_vf_stats (struct octeon_device*,struct oct_vf_stats*) ;
 int memcpy (int ,int *,int) ;
 int octeon_mbox_write (struct octeon_device*,struct octeon_mbox_cmd*) ;
 int octeon_pf_changed_vf_macaddr (struct octeon_device*,int ) ;
 int pcie_flr (int ) ;

__attribute__((used)) static int octeon_mbox_process_cmd(struct octeon_mbox *mbox,
       struct octeon_mbox_cmd *mbox_cmd)
{
 struct octeon_device *oct = mbox->oct_dev;

 switch (mbox_cmd->msg.s.cmd) {
 case 129:
  dev_dbg(&oct->pci_dev->dev, "got vfactive sending data back\n");
  mbox_cmd->msg.s.type = OCTEON_MBOX_RESPONSE;
  mbox_cmd->msg.s.resp_needed = 1;
  mbox_cmd->msg.s.len = 2;
  mbox_cmd->data[0] = 0;
  ((struct lio_version *)&mbox_cmd->data[0])->major =
   LIQUIDIO_BASE_MAJOR_VERSION;
  ((struct lio_version *)&mbox_cmd->data[0])->minor =
   LIQUIDIO_BASE_MINOR_VERSION;
  ((struct lio_version *)&mbox_cmd->data[0])->micro =
   LIQUIDIO_BASE_MICRO_VERSION;
  memcpy(mbox_cmd->msg.s.params, (uint8_t *)&oct->pfvf_hsword, 6);

  octeon_mbox_write(oct, mbox_cmd);
  break;

 case 128:
  dev_info(&oct->pci_dev->dev,
    "got a request for FLR from VF that owns DPI ring %u\n",
    mbox->q_no);
  pcie_flr(oct->sriov_info.dpiring_to_vfpcidev_lut[mbox->q_no]);
  break;

 case 130:
  if (OCTEON_CN23XX_VF(oct))
   octeon_pf_changed_vf_macaddr(oct,
           mbox_cmd->msg.s.params);
  break;

 case 131:
  dev_dbg(&oct->pci_dev->dev, "Got VF stats request. Sending data back\n");
  mbox_cmd->msg.s.type = OCTEON_MBOX_RESPONSE;
  mbox_cmd->msg.s.resp_needed = 1;
  mbox_cmd->msg.s.len = 1 +
   sizeof(struct oct_vf_stats) / sizeof(u64);
  get_vf_stats(oct, (struct oct_vf_stats *)mbox_cmd->data);
  octeon_mbox_write(oct, mbox_cmd);
  break;
 default:
  break;
 }
 return 0;
}
