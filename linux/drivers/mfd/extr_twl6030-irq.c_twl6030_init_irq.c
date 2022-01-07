
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_9__ {char* name; int irq_set_wake; int * irq_set_type; } ;
struct TYPE_8__ {int notifier_call; } ;
struct TYPE_7__ {int twl_irq; int irq_domain; TYPE_3__ pm_nb; scalar_t__ irq_mapping_tbl; int wakeirqs; TYPE_5__ irq_chip; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int REG_INT_MSK_LINE_A ;
 int REG_INT_MSK_STS_A ;
 int REG_INT_STS_A ;
 int TWL6030_NR_IRQS ;
 int TWL_MODULE_PIH ;
 int atomic_set (int *,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;
 TYPE_5__ dummy_irq_chip ;
 int irq_domain_add_linear (struct device_node*,int,int *,TYPE_1__*) ;
 int irq_domain_remove (int ) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int register_pm_notifier (TYPE_3__*) ;
 int request_threaded_irq (int,int *,int ,int ,char*,TYPE_1__*) ;
 TYPE_1__* twl6030_irq ;
 int twl6030_irq_domain_ops ;
 int twl6030_irq_pm_notifier ;
 int twl6030_irq_set_wake ;
 int twl6030_irq_thread ;
 int twl6030_of_match ;
 int twl_i2c_write (int ,int*,int ,int) ;

int twl6030_init_irq(struct device *dev, int irq_num)
{
 struct device_node *node = dev->of_node;
 int nr_irqs;
 int status;
 u8 mask[3];
 const struct of_device_id *of_id;

 of_id = of_match_device(twl6030_of_match, dev);
 if (!of_id || !of_id->data) {
  dev_err(dev, "Unknown TWL device model\n");
  return -EINVAL;
 }

 nr_irqs = TWL6030_NR_IRQS;

 twl6030_irq = devm_kzalloc(dev, sizeof(*twl6030_irq), GFP_KERNEL);
 if (!twl6030_irq)
  return -ENOMEM;

 mask[0] = 0xFF;
 mask[1] = 0xFF;
 mask[2] = 0xFF;


 status = twl_i2c_write(TWL_MODULE_PIH, &mask[0], REG_INT_MSK_LINE_A, 3);

 status |= twl_i2c_write(TWL_MODULE_PIH, &mask[0], REG_INT_MSK_STS_A, 3);

 status |= twl_i2c_write(TWL_MODULE_PIH, &mask[0], REG_INT_STS_A, 3);

 if (status < 0) {
  dev_err(dev, "I2C err writing TWL_MODULE_PIH: %d\n", status);
  return status;
 }





 twl6030_irq->irq_chip = dummy_irq_chip;
 twl6030_irq->irq_chip.name = "twl6030";
 twl6030_irq->irq_chip.irq_set_type = ((void*)0);
 twl6030_irq->irq_chip.irq_set_wake = twl6030_irq_set_wake;

 twl6030_irq->pm_nb.notifier_call = twl6030_irq_pm_notifier;
 atomic_set(&twl6030_irq->wakeirqs, 0);
 twl6030_irq->irq_mapping_tbl = of_id->data;

 twl6030_irq->irq_domain =
  irq_domain_add_linear(node, nr_irqs,
          &twl6030_irq_domain_ops, twl6030_irq);
 if (!twl6030_irq->irq_domain) {
  dev_err(dev, "Can't add irq_domain\n");
  return -ENOMEM;
 }

 dev_info(dev, "PIH (irq %d) nested IRQs\n", irq_num);


 status = request_threaded_irq(irq_num, ((void*)0), twl6030_irq_thread,
          IRQF_ONESHOT, "TWL6030-PIH", twl6030_irq);
 if (status < 0) {
  dev_err(dev, "could not claim irq %d: %d\n", irq_num, status);
  goto fail_irq;
 }

 twl6030_irq->twl_irq = irq_num;
 register_pm_notifier(&twl6030_irq->pm_nb);
 return 0;

fail_irq:
 irq_domain_remove(twl6030_irq->irq_domain);
 return status;
}
