
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int code; } ;
struct TYPE_7__ {TYPE_2__ rc; } ;
union ibmvnic_crq {TYPE_3__ get_vpd_rsp; } ;
typedef char u8 ;
struct ibmvnic_adapter {char* fw_version; int fw_done; TYPE_4__* vpd; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int len; unsigned char* buff; int dma_addr; } ;
struct TYPE_5__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int complete (int *) ;
 int dev_err (struct device*,char*,int ) ;
 int dev_info (struct device*,char*) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int memset (char*,int ,int) ;
 int strncpy (char*,...) ;
 unsigned char* strnstr (unsigned char*,char*,int) ;

__attribute__((used)) static void handle_vpd_rsp(union ibmvnic_crq *crq,
      struct ibmvnic_adapter *adapter)
{
 struct device *dev = &adapter->vdev->dev;
 unsigned char *substr = ((void*)0);
 u8 fw_level_len = 0;

 memset(adapter->fw_version, 0, 32);

 dma_unmap_single(dev, adapter->vpd->dma_addr, adapter->vpd->len,
    DMA_FROM_DEVICE);

 if (crq->get_vpd_rsp.rc.code) {
  dev_err(dev, "Error retrieving VPD from device, rc=%x\n",
   crq->get_vpd_rsp.rc.code);
  goto complete;
 }




 substr = strnstr(adapter->vpd->buff, "RM", adapter->vpd->len);
 if (!substr) {
  dev_info(dev, "Warning - No FW level has been provided in the VPD buffer by the VIOS Server\n");
  goto complete;
 }


 if ((substr + 2) < (adapter->vpd->buff + adapter->vpd->len)) {
  fw_level_len = *(substr + 2);
 } else {
  dev_info(dev, "Length of FW substr extrapolated VDP buff\n");
  goto complete;
 }


 if ((substr + 3 + fw_level_len) <
     (adapter->vpd->buff + adapter->vpd->len)) {
  strncpy((char *)adapter->fw_version, substr + 3, fw_level_len);
 } else {
  dev_info(dev, "FW substr extrapolated VPD buff\n");
 }

complete:
 if (adapter->fw_version[0] == '\0')
  strncpy((char *)adapter->fw_version, "N/A", 3 * sizeof(char));
 complete(&adapter->fw_done);
}
