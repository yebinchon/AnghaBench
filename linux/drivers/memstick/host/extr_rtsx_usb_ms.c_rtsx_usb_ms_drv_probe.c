
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rtsx_usb_ms {int poll_card; int handle_req; int host_mutex; int power_mode; struct platform_device* pdev; struct memstick_host* msh; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct memstick_host {int caps; int set_param; int request; } ;


 int ENOMEM ;
 int ENXIO ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int MEMSTICK_CAP_PAR4 ;
 int MEMSTICK_POWER_OFF ;
 int dev_dbg (TYPE_1__*,char*) ;
 int memstick_add_host (struct memstick_host*) ;
 struct memstick_host* memstick_alloc_host (int,TYPE_1__*) ;
 int memstick_free_host (struct memstick_host*) ;
 struct rtsx_usb_ms* memstick_priv (struct memstick_host*) ;
 int ms_dev (struct rtsx_usb_ms*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rtsx_usb_ms*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_active (int ) ;
 int rtsx_usb_ms_handle_req ;
 int rtsx_usb_ms_poll_card ;
 int rtsx_usb_ms_request ;
 int rtsx_usb_ms_set_param ;
 int to_usb_interface (int ) ;
 struct rtsx_ucr* usb_get_intfdata (int ) ;

__attribute__((used)) static int rtsx_usb_ms_drv_probe(struct platform_device *pdev)
{
 struct memstick_host *msh;
 struct rtsx_usb_ms *host;
 struct rtsx_ucr *ucr;
 int err;

 ucr = usb_get_intfdata(to_usb_interface(pdev->dev.parent));
 if (!ucr)
  return -ENXIO;

 dev_dbg(&(pdev->dev),
   "Realtek USB Memstick controller found\n");

 msh = memstick_alloc_host(sizeof(*host), &pdev->dev);
 if (!msh)
  return -ENOMEM;

 host = memstick_priv(msh);
 host->ucr = ucr;
 host->msh = msh;
 host->pdev = pdev;
 host->power_mode = MEMSTICK_POWER_OFF;
 platform_set_drvdata(pdev, host);

 mutex_init(&host->host_mutex);
 INIT_WORK(&host->handle_req, rtsx_usb_ms_handle_req);

 INIT_DELAYED_WORK(&host->poll_card, rtsx_usb_ms_poll_card);

 msh->request = rtsx_usb_ms_request;
 msh->set_param = rtsx_usb_ms_set_param;
 msh->caps = MEMSTICK_CAP_PAR4;

 pm_runtime_get_noresume(ms_dev(host));
 pm_runtime_set_active(ms_dev(host));
 pm_runtime_enable(ms_dev(host));

 err = memstick_add_host(msh);
 if (err)
  goto err_out;

 pm_runtime_put(ms_dev(host));

 return 0;
err_out:
 memstick_free_host(msh);
 pm_runtime_disable(ms_dev(host));
 pm_runtime_put_noidle(ms_dev(host));
 return err;
}
