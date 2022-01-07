
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_hdr {scalar_t__ chip; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; int pdev_dev; } ;


 int CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ FW_HDR_CHIP_T4 ;
 scalar_t__ FW_HDR_CHIP_T5 ;
 scalar_t__ FW_HDR_CHIP_T6 ;
 int dev_err (int ,char*,scalar_t__,int ) ;
 scalar_t__ is_t4 (int ) ;
 scalar_t__ is_t5 (int ) ;
 scalar_t__ is_t6 (int ) ;

__attribute__((used)) static bool t4_fw_matches_chip(const struct adapter *adap,
          const struct fw_hdr *hdr)
{



 if ((is_t4(adap->params.chip) && hdr->chip == FW_HDR_CHIP_T4) ||
     (is_t5(adap->params.chip) && hdr->chip == FW_HDR_CHIP_T5) ||
     (is_t6(adap->params.chip) && hdr->chip == FW_HDR_CHIP_T6))
  return 1;

 dev_err(adap->pdev_dev,
  "FW image (%d) is not suitable for this adapter (%d)\n",
  hdr->chip, CHELSIO_CHIP_VERSION(adap->params.chip));
 return 0;
}
