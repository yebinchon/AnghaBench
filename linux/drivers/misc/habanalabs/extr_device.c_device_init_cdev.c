
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int major; } ;
struct file_operations {int dummy; } ;
struct device {int release; struct class* class; int devt; } ;
struct class {int dummy; } ;
struct cdev {int owner; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MKDEV (int ,int) ;
 int THIS_MODULE ;
 int cdev_init (struct cdev*,struct file_operations const*) ;
 int dev_set_drvdata (struct device*,struct hl_device*) ;
 int dev_set_name (struct device*,char*,char*) ;
 int device_initialize (struct device*) ;
 int device_release_func ;
 struct device* kzalloc (int,int ) ;

__attribute__((used)) static int device_init_cdev(struct hl_device *hdev, struct class *hclass,
    int minor, const struct file_operations *fops,
    char *name, struct cdev *cdev,
    struct device **dev)
{
 cdev_init(cdev, fops);
 cdev->owner = THIS_MODULE;

 *dev = kzalloc(sizeof(**dev), GFP_KERNEL);
 if (!*dev)
  return -ENOMEM;

 device_initialize(*dev);
 (*dev)->devt = MKDEV(hdev->major, minor);
 (*dev)->class = hclass;
 (*dev)->release = device_release_func;
 dev_set_drvdata(*dev, hdev);
 dev_set_name(*dev, "%s", name);

 return 0;
}
