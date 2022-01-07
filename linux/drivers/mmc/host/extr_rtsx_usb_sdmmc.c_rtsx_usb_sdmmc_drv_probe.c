
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* default_trigger; int brightness_set; int brightness; int name; } ;
struct rtsx_usb_sdmmc {int led_work; TYPE_3__ led; int led_name; int host_mutex; struct platform_device* pdev; struct mmc_host* mmc; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 int INIT_WORK (int *,int ) ;
 int LED_OFF ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int led_classdev_register (int ,TYPE_3__*) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,TYPE_1__*) ;
 int mmc_dev (struct mmc_host*) ;
 char* mmc_hostname (struct mmc_host*) ;
 struct rtsx_usb_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rtsx_usb_sdmmc*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int rtsx_usb_init_host (struct rtsx_usb_sdmmc*) ;
 int rtsx_usb_led_control ;
 int rtsx_usb_update_led ;
 int snprintf (int ,int,char*,char*) ;
 int to_usb_interface (int ) ;
 struct rtsx_ucr* usb_get_intfdata (int ) ;

__attribute__((used)) static int rtsx_usb_sdmmc_drv_probe(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct rtsx_usb_sdmmc *host;
 struct rtsx_ucr *ucr;




 ucr = usb_get_intfdata(to_usb_interface(pdev->dev.parent));
 if (!ucr)
  return -ENXIO;

 dev_dbg(&(pdev->dev), ": Realtek USB SD/MMC controller found\n");

 mmc = mmc_alloc_host(sizeof(*host), &pdev->dev);
 if (!mmc)
  return -ENOMEM;

 host = mmc_priv(mmc);
 host->ucr = ucr;
 host->mmc = mmc;
 host->pdev = pdev;
 platform_set_drvdata(pdev, host);

 mutex_init(&host->host_mutex);
 rtsx_usb_init_host(host);
 pm_runtime_enable(&pdev->dev);
 mmc_add_host(mmc);

 return 0;
}
