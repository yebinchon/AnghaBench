
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct hva_dev {TYPE_1__* pdev; TYPE_2__* vdev; } ;
struct hva_ctx {int dummy; } ;
struct file {int private_data; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {char* name; } ;


 int HVA_NAME ;
 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 struct hva_ctx* fh_to_ctx (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int hva_querycap(struct file *file, void *priv,
   struct v4l2_capability *cap)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct hva_dev *hva = ctx_to_hdev(ctx);

 strscpy(cap->driver, HVA_NAME, sizeof(cap->driver));
 strscpy(cap->card, hva->vdev->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   hva->pdev->name);

 return 0;
}
