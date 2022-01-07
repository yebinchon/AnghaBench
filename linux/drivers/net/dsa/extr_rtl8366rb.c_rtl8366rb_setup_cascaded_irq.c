
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct realtek_smi {int num_ports; int irqdomain; TYPE_1__* dev; int map; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_node; } ;


 int EINVAL ;
 int IRQF_ONESHOT ;




 int RTL8366RB_INTERRUPT_CONTROL_REG ;
 int RTL8366RB_INTERRUPT_POLARITY ;
 int RTL8366RB_INTERRUPT_STATUS_REG ;
 int RTL8366RB_NUM_INTERRUPT ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct realtek_smi*) ;
 int irq_create_mapping (int ,int) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct realtek_smi*) ;
 int irq_get_irq_data (int) ;
 int irq_set_parent (int ,int) ;
 unsigned long irqd_get_trigger_type (int ) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_irq_get (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtl8366rb_irq ;
 int rtl8366rb_irqdomain_ops ;

__attribute__((used)) static int rtl8366rb_setup_cascaded_irq(struct realtek_smi *smi)
{
 struct device_node *intc;
 unsigned long irq_trig;
 int irq;
 int ret;
 u32 val;
 int i;

 intc = of_get_child_by_name(smi->dev->of_node, "interrupt-controller");
 if (!intc) {
  dev_err(smi->dev, "missing child interrupt-controller node\n");
  return -EINVAL;
 }

 irq = of_irq_get(intc, 0);
 if (irq <= 0) {
  dev_err(smi->dev, "failed to get parent IRQ\n");
  ret = irq ? irq : -EINVAL;
  goto out_put_node;
 }


 ret = regmap_read(smi->map, RTL8366RB_INTERRUPT_STATUS_REG,
     &val);
 if (ret) {
  dev_err(smi->dev, "can't read interrupt status\n");
  goto out_put_node;
 }


 irq_trig = irqd_get_trigger_type(irq_get_irq_data(irq));
 switch (irq_trig) {
 case 128:
 case 130:
  dev_info(smi->dev, "active high/rising IRQ\n");
  val = 0;
  break;
 case 131:
 case 129:
  dev_info(smi->dev, "active low/falling IRQ\n");
  val = RTL8366RB_INTERRUPT_POLARITY;
  break;
 }
 ret = regmap_update_bits(smi->map, RTL8366RB_INTERRUPT_CONTROL_REG,
     RTL8366RB_INTERRUPT_POLARITY,
     val);
 if (ret) {
  dev_err(smi->dev, "could not configure IRQ polarity\n");
  goto out_put_node;
 }

 ret = devm_request_threaded_irq(smi->dev, irq, ((void*)0),
     rtl8366rb_irq, IRQF_ONESHOT,
     "RTL8366RB", smi);
 if (ret) {
  dev_err(smi->dev, "unable to request irq: %d\n", ret);
  goto out_put_node;
 }
 smi->irqdomain = irq_domain_add_linear(intc,
            RTL8366RB_NUM_INTERRUPT,
            &rtl8366rb_irqdomain_ops,
            smi);
 if (!smi->irqdomain) {
  dev_err(smi->dev, "failed to create IRQ domain\n");
  ret = -EINVAL;
  goto out_put_node;
 }
 for (i = 0; i < smi->num_ports; i++)
  irq_set_parent(irq_create_mapping(smi->irqdomain, i), irq);

out_put_node:
 of_node_put(intc);
 return ret;
}
