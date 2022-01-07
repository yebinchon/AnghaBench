
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_3__ {int initialized; int lock; struct platform_device* pdev; int base; } ;


 int EIO ;
 int IORESOURCE_IO ;
 TYPE_1__ cs5535_mfgpt_chip ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int mfgpt_reset_timers ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int request_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int scan_timers (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cs5535_mfgpt_probe(struct platform_device *pdev)
{
 struct resource *res;
 int err = -EIO, t;

 if (mfgpt_reset_timers < 0 || mfgpt_reset_timers > 2) {
  dev_err(&pdev->dev, "Bad mfgpt_reset_timers value: %i\n",
   mfgpt_reset_timers);
  goto done;
 }
 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res) {
  dev_err(&pdev->dev, "can't fetch device resource info\n");
  goto done;
 }

 if (!request_region(res->start, resource_size(res), pdev->name)) {
  dev_err(&pdev->dev, "can't request region\n");
  goto done;
 }


 cs5535_mfgpt_chip.base = res->start;
 cs5535_mfgpt_chip.pdev = pdev;
 spin_lock_init(&cs5535_mfgpt_chip.lock);

 dev_info(&pdev->dev, "reserved resource region %pR\n", res);


 t = scan_timers(&cs5535_mfgpt_chip);
 dev_info(&pdev->dev, "%d MFGPT timers available\n", t);
 cs5535_mfgpt_chip.initialized = 1;
 return 0;

done:
 return err;
}
