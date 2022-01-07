
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct fimc_lite {TYPE_1__* pdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int FIMC_LITE_DRV_NAME ;
 char* dev_name (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct fimc_lite *fimc = video_drvdata(file);

 strscpy(cap->driver, FIMC_LITE_DRV_NAME, sizeof(cap->driver));
 strscpy(cap->card, FIMC_LITE_DRV_NAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
     dev_name(&fimc->pdev->dev));
 return 0;
}
