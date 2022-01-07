
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int private_data; } ;
struct delta_dev {TYPE_1__* pdev; TYPE_2__* vdev; } ;
struct delta_ctx {struct delta_dev* dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {char* name; } ;


 int DELTA_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct delta_ctx* to_ctx (int ) ;

__attribute__((used)) static int delta_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;

 strscpy(cap->driver, DELTA_NAME, sizeof(cap->driver));
 strscpy(cap->card, delta->vdev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   delta->pdev->name);

 return 0;
}
