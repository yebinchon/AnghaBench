
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct bdisp_dev {int id; TYPE_1__* pdev; } ;
struct bdisp_ctx {struct bdisp_dev* bdisp_dev; } ;
struct TYPE_2__ {int name; } ;


 char* BDISP_NAME ;
 struct bdisp_ctx* fh_to_ctx (void*) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int bdisp_querycap(struct file *file, void *fh,
     struct v4l2_capability *cap)
{
 struct bdisp_ctx *ctx = fh_to_ctx(fh);
 struct bdisp_dev *bdisp = ctx->bdisp_dev;

 strscpy(cap->driver, bdisp->pdev->name, sizeof(cap->driver));
 strscpy(cap->card, bdisp->pdev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s%d",
   BDISP_NAME, bdisp->id);
 return 0;
}
