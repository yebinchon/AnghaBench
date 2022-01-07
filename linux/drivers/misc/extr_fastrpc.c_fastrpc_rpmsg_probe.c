
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; } ;
struct rpmsg_device {struct device dev; } ;
struct TYPE_2__ {int * fops; int name; int minor; } ;
struct fastrpc_channel_ctx {int domain_id; struct rpmsg_device* rpdev; int ctx_idr; int lock; int users; int refcount; TYPE_1__ miscdev; } ;


 int CDSP_DOMAIN_ID ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MISC_DYNAMIC_MINOR ;
 int dev_info (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct fastrpc_channel_ctx*) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int * domains ;
 int fastrpc_fops ;
 int idr_init (int *) ;
 int kasprintf (int ,char*,int ) ;
 int kref_init (int *) ;
 struct fastrpc_channel_ctx* kzalloc (int,int ) ;
 int misc_register (TYPE_1__*) ;
 int of_platform_populate (int ,int *,int *,struct device*) ;
 int of_property_read_string (int ,char*,char const**) ;
 int spin_lock_init (int *) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
{
 struct device *rdev = &rpdev->dev;
 struct fastrpc_channel_ctx *data;
 int i, err, domain_id = -1;
 const char *domain;

 err = of_property_read_string(rdev->of_node, "label", &domain);
 if (err) {
  dev_info(rdev, "FastRPC Domain not specified in DT\n");
  return err;
 }

 for (i = 0; i <= CDSP_DOMAIN_ID; i++) {
  if (!strcmp(domains[i], domain)) {
   domain_id = i;
   break;
  }
 }

 if (domain_id < 0) {
  dev_info(rdev, "FastRPC Invalid Domain ID %d\n", domain_id);
  return -EINVAL;
 }

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->miscdev.minor = MISC_DYNAMIC_MINOR;
 data->miscdev.name = kasprintf(GFP_KERNEL, "fastrpc-%s",
    domains[domain_id]);
 data->miscdev.fops = &fastrpc_fops;
 err = misc_register(&data->miscdev);
 if (err)
  return err;

 kref_init(&data->refcount);

 dev_set_drvdata(&rpdev->dev, data);
 dma_set_mask_and_coherent(rdev, DMA_BIT_MASK(32));
 INIT_LIST_HEAD(&data->users);
 spin_lock_init(&data->lock);
 idr_init(&data->ctx_idr);
 data->domain_id = domain_id;
 data->rpdev = rpdev;

 return of_platform_populate(rdev->of_node, ((void*)0), ((void*)0), rdev);
}
