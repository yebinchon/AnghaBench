
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct csis_drvdata* data; } ;
struct TYPE_13__ {int function; } ;
struct TYPE_11__ {TYPE_6__ entity; int flags; int name; int owner; } ;
struct TYPE_10__ {int height; int width; int code; } ;
struct csis_state {scalar_t__ num_lanes; scalar_t__ max_num_lanes; scalar_t__ irq; int index; int * clock; TYPE_2__ sd; scalar_t__ clk_frequency; int wclk_ext; int hs_settle; int events; TYPE_7__* pads; TYPE_1__ format; TYPE_4__* csis_fmt; TYPE_9__* supplies; int regs; int phy; int interrupt_mask; struct platform_device* pdev; int slock; int lock; } ;
struct csis_drvdata {int interrupt_mask; } ;
struct TYPE_15__ {int supply; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_12__ {int code; } ;


 size_t CSIS_CLK_MUX ;
 int CSIS_NUM_SUPPLIES ;
 int CSIS_PADS_NUM ;
 size_t CSIS_PAD_SINK ;
 size_t CSIS_PAD_SOURCE ;
 char* CSIS_SUBDEV_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_ENT_F_IO_V4L ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PTR_ERR (int ) ;
 int S5PCSIS_DEF_PIX_HEIGHT ;
 int S5PCSIS_DEF_PIX_WIDTH ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 scalar_t__ WARN_ON (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_set_rate (int ,scalar_t__) ;
 int * csis_supply_name ;
 int dev_WARN (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,scalar_t__,int ,int ,scalar_t__) ;
 int dev_name (struct device*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct csis_state* devm_kzalloc (struct device*,int,int ) ;
 int devm_phy_get (struct device*,char*) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_9__*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct csis_state*) ;
 int media_entity_cleanup (TYPE_6__*) ;
 int media_entity_pads_init (TYPE_6__*,int ,TYPE_7__*) ;
 int memcpy (int ,int ,int) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int s5pcsis_clk_get (struct csis_state*) ;
 int s5pcsis_clk_put (struct csis_state*) ;
 int s5pcsis_events ;
 TYPE_4__* s5pcsis_formats ;
 int s5pcsis_irq_handler ;
 int s5pcsis_of_match ;
 int s5pcsis_parse_dt (struct platform_device*,struct csis_state*) ;
 int s5pcsis_pm_resume (struct device*,int) ;
 int s5pcsis_subdev_ops ;
 int snprintf (int ,int,char*,char*,int) ;
 int spin_lock_init (int *) ;
 int v4l2_set_subdevdata (TYPE_2__*,struct platform_device*) ;
 int v4l2_subdev_init (TYPE_2__*,int *) ;

__attribute__((used)) static int s5pcsis_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id;
 const struct csis_drvdata *drv_data;
 struct device *dev = &pdev->dev;
 struct resource *mem_res;
 struct csis_state *state;
 int ret = -ENOMEM;
 int i;

 state = devm_kzalloc(dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 mutex_init(&state->lock);
 spin_lock_init(&state->slock);
 state->pdev = pdev;

 of_id = of_match_node(s5pcsis_of_match, dev->of_node);
 if (WARN_ON(of_id == ((void*)0)))
  return -EINVAL;

 drv_data = of_id->data;
 state->interrupt_mask = drv_data->interrupt_mask;

 ret = s5pcsis_parse_dt(pdev, state);
 if (ret < 0)
  return ret;

 if (state->num_lanes == 0 || state->num_lanes > state->max_num_lanes) {
  dev_err(dev, "Unsupported number of data lanes: %d (max. %d)\n",
   state->num_lanes, state->max_num_lanes);
  return -EINVAL;
 }

 state->phy = devm_phy_get(dev, "csis");
 if (IS_ERR(state->phy))
  return PTR_ERR(state->phy);

 mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 state->regs = devm_ioremap_resource(dev, mem_res);
 if (IS_ERR(state->regs))
  return PTR_ERR(state->regs);

 state->irq = platform_get_irq(pdev, 0);
 if (state->irq < 0)
  return state->irq;

 for (i = 0; i < CSIS_NUM_SUPPLIES; i++)
  state->supplies[i].supply = csis_supply_name[i];

 ret = devm_regulator_bulk_get(dev, CSIS_NUM_SUPPLIES,
     state->supplies);
 if (ret)
  return ret;

 ret = s5pcsis_clk_get(state);
 if (ret < 0)
  return ret;

 if (state->clk_frequency)
  ret = clk_set_rate(state->clock[CSIS_CLK_MUX],
       state->clk_frequency);
 else
  dev_WARN(dev, "No clock frequency specified!\n");
 if (ret < 0)
  goto e_clkput;

 ret = clk_enable(state->clock[CSIS_CLK_MUX]);
 if (ret < 0)
  goto e_clkput;

 ret = devm_request_irq(dev, state->irq, s5pcsis_irq_handler,
          0, dev_name(dev), state);
 if (ret) {
  dev_err(dev, "Interrupt request failed\n");
  goto e_clkdis;
 }

 v4l2_subdev_init(&state->sd, &s5pcsis_subdev_ops);
 state->sd.owner = THIS_MODULE;
 snprintf(state->sd.name, sizeof(state->sd.name), "%s.%d",
   CSIS_SUBDEV_NAME, state->index);
 state->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 state->csis_fmt = &s5pcsis_formats[0];

 state->format.code = s5pcsis_formats[0].code;
 state->format.width = S5PCSIS_DEF_PIX_WIDTH;
 state->format.height = S5PCSIS_DEF_PIX_HEIGHT;

 state->sd.entity.function = MEDIA_ENT_F_IO_V4L;
 state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&state->sd.entity,
    CSIS_PADS_NUM, state->pads);
 if (ret < 0)
  goto e_clkdis;


 v4l2_set_subdevdata(&state->sd, pdev);


 platform_set_drvdata(pdev, &state->sd);
 memcpy(state->events, s5pcsis_events, sizeof(state->events));

 pm_runtime_enable(dev);
 if (!pm_runtime_enabled(dev)) {
  ret = s5pcsis_pm_resume(dev, 1);
  if (ret < 0)
   goto e_m_ent;
 }

 dev_info(&pdev->dev, "lanes: %d, hs_settle: %d, wclk: %d, freq: %u\n",
   state->num_lanes, state->hs_settle, state->wclk_ext,
   state->clk_frequency);
 return 0;

e_m_ent:
 media_entity_cleanup(&state->sd.entity);
e_clkdis:
 clk_disable(state->clock[CSIS_CLK_MUX]);
e_clkput:
 s5pcsis_clk_put(state);
 return ret;
}
