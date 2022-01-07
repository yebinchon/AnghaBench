
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_10__ {int of_node; struct mmp_camera_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct mmp_camera_platform_data {int mclk_src; int mclk_div; scalar_t__ bus_type; scalar_t__* dphy; int lane; } ;
struct TYPE_8__ {struct fwnode_handle* fwnode; } ;
struct TYPE_9__ {TYPE_1__ match; int match_type; } ;
struct mcam_camera {int mclk_src; int mclk_div; scalar_t__ bus_type; scalar_t__* dphy; int mipi_enabled; TYPE_2__ asd; int mclk; int regs_size; int regs; int dev_lock; int bus_info; int buffer_mode; int chip_id; TYPE_3__* dev; int lane; int calc_dphy; } ;
struct mmp_camera {int irq; int mipi_clk; struct mcam_camera mcam; int devlist; struct platform_device* pdev; } ;
struct fwnode_handle {int dummy; } ;


 int B_DMA_sg ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int MCAM_ARMADA610 ;
 int PTR_ERR (int ) ;
 int V4L2_ASYNC_MATCH_FWNODE ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int dev_err (TYPE_3__*,char*) ;
 int devm_clk_get (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct mmp_camera* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int ,int ,int ,char*,struct mcam_camera*) ;
 struct fwnode_handle* fwnode_graph_get_next_endpoint (int ,int *) ;
 struct fwnode_handle* fwnode_graph_get_remote_port_parent (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int mcam_init_clk (struct mcam_camera*) ;
 int mccic_register (struct mcam_camera*) ;
 int mccic_shutdown (struct mcam_camera*) ;
 int mmpcam_add_device (struct mmp_camera*) ;
 int mmpcam_calc_dphy ;
 int mmpcam_irq ;
 int of_clk_add_provider (int ,int ,int ) ;
 int of_clk_src_simple_get ;
 int of_fwnode_handle (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int mmpcam_probe(struct platform_device *pdev)
{
 struct mmp_camera *cam;
 struct mcam_camera *mcam;
 struct resource *res;
 struct fwnode_handle *ep;
 struct mmp_camera_platform_data *pdata;
 int ret;

 cam = devm_kzalloc(&pdev->dev, sizeof(*cam), GFP_KERNEL);
 if (cam == ((void*)0))
  return -ENOMEM;
 cam->pdev = pdev;
 INIT_LIST_HEAD(&cam->devlist);

 mcam = &cam->mcam;
 mcam->calc_dphy = mmpcam_calc_dphy;
 mcam->dev = &pdev->dev;
 pdata = pdev->dev.platform_data;
 if (pdata) {
  mcam->mclk_src = pdata->mclk_src;
  mcam->mclk_div = pdata->mclk_div;
  mcam->bus_type = pdata->bus_type;
  mcam->dphy = pdata->dphy;
  mcam->lane = pdata->lane;
 } else {






  mcam->mclk_src = 3;
  mcam->mclk_div = 2;
 }
 if (mcam->bus_type == V4L2_MBUS_CSI2_DPHY) {
  cam->mipi_clk = devm_clk_get(mcam->dev, "mipi");
  if ((IS_ERR(cam->mipi_clk) && mcam->dphy[2] == 0))
   return PTR_ERR(cam->mipi_clk);
 }
 mcam->mipi_enabled = 0;
 mcam->chip_id = MCAM_ARMADA610;
 mcam->buffer_mode = B_DMA_sg;
 strscpy(mcam->bus_info, "platform:mmp-camera", sizeof(mcam->bus_info));
 spin_lock_init(&mcam->dev_lock);



 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mcam->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mcam->regs))
  return PTR_ERR(mcam->regs);
 mcam->regs_size = resource_size(res);

 mcam_init_clk(mcam);




 ep = fwnode_graph_get_next_endpoint(of_fwnode_handle(pdev->dev.of_node),
         ((void*)0));
 if (!ep)
  return -ENODEV;

 mcam->asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
 mcam->asd.match.fwnode = fwnode_graph_get_remote_port_parent(ep);

 fwnode_handle_put(ep);




 ret = mccic_register(mcam);
 if (ret)
  return ret;




 ret = of_clk_add_provider(pdev->dev.of_node, of_clk_src_simple_get,
        mcam->mclk);
 if (ret) {
  dev_err(&pdev->dev, "can't add DT clock provider\n");
  goto out;
 }





 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res == ((void*)0)) {
  ret = -ENODEV;
  goto out;
 }
 cam->irq = res->start;
 ret = devm_request_irq(&pdev->dev, cam->irq, mmpcam_irq, IRQF_SHARED,
     "mmp-camera", mcam);
 if (ret == 0) {
  mmpcam_add_device(cam);
  return 0;
 }

out:
 fwnode_handle_put(mcam->asd.match.fwnode);
 mccic_shutdown(mcam);

 return ret;
}
