
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* slots; } ;
struct realtek_pci_ms {int handle_req; int host_mutex; struct platform_device* pdev; struct memstick_host* msh; struct rtsx_pcr* pcr; } ;
struct TYPE_5__ {struct pcr_handle* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcr_handle {struct rtsx_pcr* pcr; } ;
struct memstick_host {int caps; int set_param; int request; } ;
struct TYPE_4__ {int card_event; struct platform_device* p_dev; } ;


 int ENOMEM ;
 int ENXIO ;
 int INIT_WORK (int *,int ) ;
 int MEMSTICK_CAP_PAR4 ;
 size_t RTSX_MS_CARD ;
 int dev_dbg (TYPE_2__*,char*) ;
 int memstick_add_host (struct memstick_host*) ;
 struct memstick_host* memstick_alloc_host (int,TYPE_2__*) ;
 int memstick_free_host (struct memstick_host*) ;
 struct realtek_pci_ms* memstick_priv (struct memstick_host*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct realtek_pci_ms*) ;
 int rtsx_pci_ms_card_event ;
 int rtsx_pci_ms_handle_req ;
 int rtsx_pci_ms_request ;
 int rtsx_pci_ms_set_param ;

__attribute__((used)) static int rtsx_pci_ms_drv_probe(struct platform_device *pdev)
{
 struct memstick_host *msh;
 struct realtek_pci_ms *host;
 struct rtsx_pcr *pcr;
 struct pcr_handle *handle = pdev->dev.platform_data;
 int rc;

 if (!handle)
  return -ENXIO;

 pcr = handle->pcr;
 if (!pcr)
  return -ENXIO;

 dev_dbg(&(pdev->dev),
   ": Realtek PCI-E Memstick controller found\n");

 msh = memstick_alloc_host(sizeof(*host), &pdev->dev);
 if (!msh)
  return -ENOMEM;

 host = memstick_priv(msh);
 host->pcr = pcr;
 host->msh = msh;
 host->pdev = pdev;
 platform_set_drvdata(pdev, host);
 pcr->slots[RTSX_MS_CARD].p_dev = pdev;
 pcr->slots[RTSX_MS_CARD].card_event = rtsx_pci_ms_card_event;

 mutex_init(&host->host_mutex);

 INIT_WORK(&host->handle_req, rtsx_pci_ms_handle_req);
 msh->request = rtsx_pci_ms_request;
 msh->set_param = rtsx_pci_ms_set_param;
 msh->caps = MEMSTICK_CAP_PAR4;

 rc = memstick_add_host(msh);
 if (rc) {
  memstick_free_host(msh);
  return rc;
 }

 return 0;
}
