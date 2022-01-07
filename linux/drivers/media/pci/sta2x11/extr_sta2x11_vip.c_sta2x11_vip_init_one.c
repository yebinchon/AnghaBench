
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vip_config {int pwr_name; int pwr_pin; int reset_name; int reset_pin; int i2c_addr; int i2c_id; } ;
struct TYPE_5__ {int * lock; int * queue; int * v4l2_dev; } ;
struct sta2x11_vip {int v4l2_dev; int iomem; int vb_vidq; TYPE_1__ video_dev; int decoder; int adapter; struct vip_config* config; int v4l_lock; int slock; int format; int std; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
typedef int irq_handler_t ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int V4L2_STD_PAL ;
 int VFL_TYPE_GRABBER ;
 int core ;
 int dev_dbg (int *,char*,unsigned long,unsigned long,int ) ;
 int dev_err (int *,char*) ;
 struct vip_config* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 scalar_t__ dma_set_mask (int *,int ) ;
 int * formats_50 ;
 int free_irq (int ,struct sta2x11_vip*) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int i2c_get_adapter (int ) ;
 int i2c_put_adapter (int ) ;
 int init ;
 int kfree (struct sta2x11_vip*) ;
 struct sta2x11_vip* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int request_irq (int ,int ,int ,int ,struct sta2x11_vip*) ;
 int spin_lock_init (int *) ;
 int sta2x11_vip_init_buffer (struct sta2x11_vip*) ;
 int sta2x11_vip_init_controls (struct sta2x11_vip*) ;
 int sta2x11_vip_init_register (struct sta2x11_vip*) ;
 int usleep_range (int,int) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_i2c_new_subdev (int *,int ,char*,int ,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int vb2_queue_release (int *) ;
 TYPE_1__ video_dev_template ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct sta2x11_vip*) ;
 int video_unregister_device (TYPE_1__*) ;
 int vip_gpio_release (int *,int ,int ) ;
 int vip_gpio_reserve (int *,int ,int ,int ) ;
 scalar_t__ vip_irq ;

__attribute__((used)) static int sta2x11_vip_init_one(struct pci_dev *pdev,
    const struct pci_device_id *ent)
{
 int ret;
 struct sta2x11_vip *vip;
 struct vip_config *config;


 if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(26))) {
  dev_err(&pdev->dev, "26-bit DMA addressing not available\n");
  return -EINVAL;
 }

 ret = pci_enable_device(pdev);
 if (ret)
  return ret;


 config = dev_get_platdata(&pdev->dev);
 if (!config) {
  dev_info(&pdev->dev, "VIP slot disabled\n");
  ret = -EINVAL;
  goto disable;
 }


 ret = vip_gpio_reserve(&pdev->dev, config->pwr_pin, 0,
          config->pwr_name);
 if (ret)
  goto disable;

 ret = vip_gpio_reserve(&pdev->dev, config->reset_pin, 0,
          config->reset_name);
 if (ret) {
  vip_gpio_release(&pdev->dev, config->pwr_pin,
     config->pwr_name);
  goto disable;
 }

 if (gpio_is_valid(config->pwr_pin)) {

  usleep_range(5000, 25000);
  gpio_direction_output(config->pwr_pin, 1);
 }

 if (gpio_is_valid(config->reset_pin)) {

  usleep_range(5000, 25000);
  gpio_direction_output(config->reset_pin, 1);
 }
 usleep_range(5000, 25000);


 vip = kzalloc(sizeof(struct sta2x11_vip), GFP_KERNEL);
 if (!vip) {
  ret = -ENOMEM;
  goto release_gpios;
 }
 vip->pdev = pdev;
 vip->std = V4L2_STD_PAL;
 vip->format = formats_50[0];
 vip->config = config;
 mutex_init(&vip->v4l_lock);

 ret = sta2x11_vip_init_controls(vip);
 if (ret)
  goto free_mem;
 ret = v4l2_device_register(&pdev->dev, &vip->v4l2_dev);
 if (ret)
  goto free_mem;

 dev_dbg(&pdev->dev, "BAR #0 at 0x%lx 0x%lx irq %d\n",
  (unsigned long)pci_resource_start(pdev, 0),
  (unsigned long)pci_resource_len(pdev, 0), pdev->irq);

 pci_set_master(pdev);

 ret = pci_request_regions(pdev, KBUILD_MODNAME);
 if (ret)
  goto unreg;

 vip->iomem = pci_iomap(pdev, 0, 0x100);
 if (!vip->iomem) {
  ret = -ENOMEM;
  goto release;
 }

 pci_enable_msi(pdev);


 ret = sta2x11_vip_init_buffer(vip);
 if (ret)
  goto unmap;

 spin_lock_init(&vip->slock);

 ret = request_irq(pdev->irq,
     (irq_handler_t) vip_irq,
     IRQF_SHARED, KBUILD_MODNAME, vip);
 if (ret) {
  dev_err(&pdev->dev, "request_irq failed\n");
  ret = -ENODEV;
  goto release_buf;
 }


 vip->video_dev = video_dev_template;
 vip->video_dev.v4l2_dev = &vip->v4l2_dev;
 vip->video_dev.queue = &vip->vb_vidq;
 vip->video_dev.lock = &vip->v4l_lock;
 video_set_drvdata(&vip->video_dev, vip);

 ret = video_register_device(&vip->video_dev, VFL_TYPE_GRABBER, -1);
 if (ret)
  goto vrelease;


 vip->adapter = i2c_get_adapter(vip->config->i2c_id);
 if (!vip->adapter) {
  ret = -ENODEV;
  dev_err(&pdev->dev, "no I2C adapter found\n");
  goto vunreg;
 }

 vip->decoder = v4l2_i2c_new_subdev(&vip->v4l2_dev, vip->adapter,
        "adv7180", vip->config->i2c_addr,
        ((void*)0));
 if (!vip->decoder) {
  ret = -ENODEV;
  dev_err(&pdev->dev, "no decoder found\n");
  goto vunreg;
 }

 i2c_put_adapter(vip->adapter);
 v4l2_subdev_call(vip->decoder, core, init, 0);

 sta2x11_vip_init_register(vip);

 dev_info(&pdev->dev, "STA2X11 Video Input Port (VIP) loaded\n");
 return 0;

vunreg:
 video_set_drvdata(&vip->video_dev, ((void*)0));
vrelease:
 video_unregister_device(&vip->video_dev);
 free_irq(pdev->irq, vip);
release_buf:
 pci_disable_msi(pdev);
unmap:
 vb2_queue_release(&vip->vb_vidq);
 pci_iounmap(pdev, vip->iomem);
release:
 pci_release_regions(pdev);
unreg:
 v4l2_device_unregister(&vip->v4l2_dev);
free_mem:
 kfree(vip);
release_gpios:
 vip_gpio_release(&pdev->dev, config->reset_pin, config->reset_name);
 vip_gpio_release(&pdev->dev, config->pwr_pin, config->pwr_name);
disable:




 return ret;
}
