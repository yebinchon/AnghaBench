
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ab8500_gpadc {scalar_t__ irq_sw; scalar_t__ irq_hw; TYPE_1__* dev; int node; int regu; int ab8500_gpadc_complete; int ab8500_gpadc_lock; int parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPADC_AUDOSUSPEND_DELAY ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ab8500_bm_gpadcconvend_handler ;
 int ab8500_gpadc_list ;
 int ab8500_gpadc_read_calibration_data (struct ab8500_gpadc*) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_get_drvdata (int ) ;
 struct ab8500_gpadc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_get (TYPE_1__*,char*) ;
 int free_irq (int,struct ab8500_gpadc*) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct ab8500_gpadc*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_set_active (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;
 int regulator_enable (int ) ;
 int request_threaded_irq (scalar_t__,int *,int ,int,char*,struct ab8500_gpadc*) ;

__attribute__((used)) static int ab8500_gpadc_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct ab8500_gpadc *gpadc;

 gpadc = devm_kzalloc(&pdev->dev,
        sizeof(struct ab8500_gpadc), GFP_KERNEL);
 if (!gpadc)
  return -ENOMEM;

 gpadc->irq_sw = platform_get_irq_byname(pdev, "SW_CONV_END");
 if (gpadc->irq_sw < 0)
  dev_err(gpadc->dev, "failed to get platform sw_conv_end irq\n");

 gpadc->irq_hw = platform_get_irq_byname(pdev, "HW_CONV_END");
 if (gpadc->irq_hw < 0)
  dev_err(gpadc->dev, "failed to get platform hw_conv_end irq\n");

 gpadc->dev = &pdev->dev;
 gpadc->parent = dev_get_drvdata(pdev->dev.parent);
 mutex_init(&gpadc->ab8500_gpadc_lock);


 init_completion(&gpadc->ab8500_gpadc_complete);


 if (gpadc->irq_sw >= 0) {
  ret = request_threaded_irq(gpadc->irq_sw, ((void*)0),
   ab8500_bm_gpadcconvend_handler,
   IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
   "ab8500-gpadc-sw",
   gpadc);
  if (ret < 0) {
   dev_err(gpadc->dev,
    "Failed to register interrupt irq: %d\n",
    gpadc->irq_sw);
   goto fail;
  }
 }

 if (gpadc->irq_hw >= 0) {
  ret = request_threaded_irq(gpadc->irq_hw, ((void*)0),
   ab8500_bm_gpadcconvend_handler,
   IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
   "ab8500-gpadc-hw",
   gpadc);
  if (ret < 0) {
   dev_err(gpadc->dev,
    "Failed to register interrupt irq: %d\n",
    gpadc->irq_hw);
   goto fail_irq;
  }
 }


 gpadc->regu = devm_regulator_get(&pdev->dev, "vddadc");
 if (IS_ERR(gpadc->regu)) {
  ret = PTR_ERR(gpadc->regu);
  dev_err(gpadc->dev, "failed to get vtvout LDO\n");
  goto fail_irq;
 }

 platform_set_drvdata(pdev, gpadc);

 ret = regulator_enable(gpadc->regu);
 if (ret) {
  dev_err(gpadc->dev, "Failed to enable vtvout LDO: %d\n", ret);
  goto fail_enable;
 }

 pm_runtime_set_autosuspend_delay(gpadc->dev, GPADC_AUDOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(gpadc->dev);
 pm_runtime_set_active(gpadc->dev);
 pm_runtime_enable(gpadc->dev);

 ab8500_gpadc_read_calibration_data(gpadc);
 list_add_tail(&gpadc->node, &ab8500_gpadc_list);
 dev_dbg(gpadc->dev, "probe success\n");

 return 0;

fail_enable:
fail_irq:
 free_irq(gpadc->irq_sw, gpadc);
 free_irq(gpadc->irq_hw, gpadc);
fail:
 return ret;
}
