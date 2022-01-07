
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct firmware {int size; scalar_t__ data; } ;
struct device {int dummy; } ;
struct TYPE_15__ {size_t max_flowrings; int max_rxbufpost; int rx_dataoffset; TYPE_5__* flowrings; TYPE_4__** commonrings; } ;
struct brcmf_pciedev_info {TYPE_8__* pdev; int mbdata_resp_wait; TYPE_7__ shared; int state; int ci; } ;
struct brcmf_pciedev {struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_fw_request {TYPE_3__* items; } ;
struct brcmf_commonring {int dummy; } ;
struct TYPE_9__ {struct brcmf_pciedev* pcie; } ;
struct brcmf_bus {TYPE_6__* msgbuf; TYPE_1__ bus_priv; } ;
struct TYPE_16__ {int dev; } ;
struct TYPE_14__ {size_t max_flowrings; int max_rxbufpost; int rx_dataoffset; struct brcmf_commonring** flowrings; int ** commonrings; } ;
struct TYPE_13__ {struct brcmf_commonring commonring; } ;
struct TYPE_12__ {int commonring; } ;
struct TYPE_10__ {size_t len; void* data; } ;
struct TYPE_11__ {TYPE_2__ nv_data; struct firmware* binary; } ;


 int BCMA_CORE_PCIE2 ;
 int BRCMFMAC_PCIE_STATE_UP ;
 size_t BRCMF_NROF_COMMON_MSGRINGS ;
 size_t BRCMF_PCIE_FW_CODE ;
 size_t BRCMF_PCIE_FW_NVRAM ;
 int GFP_KERNEL ;
 int brcmf_attach (int *) ;
 int brcmf_chip_get_raminfo (int ) ;
 int brcmf_err (struct brcmf_bus*,char*) ;
 int brcmf_pcie_adjust_ramsize (struct brcmf_pciedev_info*,int *,int ) ;
 int brcmf_pcie_attach (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_bus_console_read (struct brcmf_pciedev_info*,int) ;
 int brcmf_pcie_download_fw_nvram (struct brcmf_pciedev_info*,struct firmware const*,void*,size_t) ;
 int brcmf_pcie_hostready (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_init_ringbuffers (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_init_scratchbuffers (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_intr_enable (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_request_irq (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_select_core (struct brcmf_pciedev_info*,int ) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int device_release_driver (struct device*) ;
 int init_waitqueue_head (int *) ;
 struct brcmf_commonring** kcalloc (size_t,int,int ) ;
 int kfree (struct brcmf_fw_request*) ;

__attribute__((used)) static void brcmf_pcie_setup(struct device *dev, int ret,
        struct brcmf_fw_request *fwreq)
{
 const struct firmware *fw;
 void *nvram;
 struct brcmf_bus *bus;
 struct brcmf_pciedev *pcie_bus_dev;
 struct brcmf_pciedev_info *devinfo;
 struct brcmf_commonring **flowrings;
 u32 i, nvram_len;


 if (ret)
  goto fail;

 bus = dev_get_drvdata(dev);
 pcie_bus_dev = bus->bus_priv.pcie;
 devinfo = pcie_bus_dev->devinfo;
 brcmf_pcie_attach(devinfo);

 fw = fwreq->items[BRCMF_PCIE_FW_CODE].binary;
 nvram = fwreq->items[BRCMF_PCIE_FW_NVRAM].nv_data.data;
 nvram_len = fwreq->items[BRCMF_PCIE_FW_NVRAM].nv_data.len;
 kfree(fwreq);

 ret = brcmf_chip_get_raminfo(devinfo->ci);
 if (ret) {
  brcmf_err(bus, "Failed to get RAM info\n");
  goto fail;
 }






 brcmf_pcie_adjust_ramsize(devinfo, (u8 *)fw->data, fw->size);

 ret = brcmf_pcie_download_fw_nvram(devinfo, fw, nvram, nvram_len);
 if (ret)
  goto fail;

 devinfo->state = BRCMFMAC_PCIE_STATE_UP;

 ret = brcmf_pcie_init_ringbuffers(devinfo);
 if (ret)
  goto fail;

 ret = brcmf_pcie_init_scratchbuffers(devinfo);
 if (ret)
  goto fail;

 brcmf_pcie_select_core(devinfo, BCMA_CORE_PCIE2);
 ret = brcmf_pcie_request_irq(devinfo);
 if (ret)
  goto fail;


 for (i = 0; i < BRCMF_NROF_COMMON_MSGRINGS; i++)
  bus->msgbuf->commonrings[i] =
    &devinfo->shared.commonrings[i]->commonring;

 flowrings = kcalloc(devinfo->shared.max_flowrings, sizeof(*flowrings),
       GFP_KERNEL);
 if (!flowrings)
  goto fail;

 for (i = 0; i < devinfo->shared.max_flowrings; i++)
  flowrings[i] = &devinfo->shared.flowrings[i].commonring;
 bus->msgbuf->flowrings = flowrings;

 bus->msgbuf->rx_dataoffset = devinfo->shared.rx_dataoffset;
 bus->msgbuf->max_rxbufpost = devinfo->shared.max_rxbufpost;
 bus->msgbuf->max_flowrings = devinfo->shared.max_flowrings;

 init_waitqueue_head(&devinfo->mbdata_resp_wait);

 brcmf_pcie_intr_enable(devinfo);
 brcmf_pcie_hostready(devinfo);

 ret = brcmf_attach(&devinfo->pdev->dev);
 if (ret)
  goto fail;

 brcmf_pcie_bus_console_read(devinfo, 0);

 return;

fail:
 device_release_driver(dev);
}
