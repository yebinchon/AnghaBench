
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int flags; } ;
struct device {int * parent; } ;
struct platform_device {struct device dev; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int IORESOURCE_IRQ ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (int *,char*,char const*) ;
 int device_init_wakeup (struct device*,int) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,void*,unsigned int) ;
 int platform_device_add_resources (struct platform_device*,struct resource*,int) ;
 struct platform_device* platform_device_alloc (char const*,int) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static struct device *add_child(struct i2c_client *client, const char *name,
  void *pdata, unsigned pdata_len,
  bool can_wakeup, int irq)
{
 struct platform_device *pdev;
 int status;

 pdev = platform_device_alloc(name, -1);
 if (!pdev)
  return ERR_PTR(-ENOMEM);

 device_init_wakeup(&pdev->dev, can_wakeup);
 pdev->dev.parent = &client->dev;

 if (pdata) {
  status = platform_device_add_data(pdev, pdata, pdata_len);
  if (status < 0) {
   dev_dbg(&pdev->dev, "can't add platform_data\n");
   goto put_device;
  }
 }

 if (irq) {
  struct resource r = {
   .start = irq,
   .flags = IORESOURCE_IRQ,
  };

  status = platform_device_add_resources(pdev, &r, 1);
  if (status < 0) {
   dev_dbg(&pdev->dev, "can't add irq\n");
   goto put_device;
  }
 }

 status = platform_device_add(pdev);
 if (status)
  goto put_device;

 return &pdev->dev;

put_device:
 platform_device_put(pdev);
 dev_err(&client->dev, "failed to add device %s\n", name);
 return ERR_PTR(status);
}
