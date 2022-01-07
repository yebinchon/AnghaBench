
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;
struct cal_ctx {TYPE_1__ v4l2_dev; } ;


 int CAL_MODULE_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct cal_ctx* video_drvdata (struct file*) ;

__attribute__((used)) static int cal_querycap(struct file *file, void *priv,
   struct v4l2_capability *cap)
{
 struct cal_ctx *ctx = video_drvdata(file);

 strscpy(cap->driver, CAL_MODULE_NAME, sizeof(cap->driver));
 strscpy(cap->card, CAL_MODULE_NAME, sizeof(cap->card));

 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", ctx->v4l2_dev.name);
 return 0;
}
