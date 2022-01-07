
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vexpress_syscfg_func {int num_templates; void* regmap; int list; int * template; struct vexpress_syscfg* syscfg; } ;
struct vexpress_syscfg {int funcs; } ;
typedef void regmap ;
struct property {int length; int * value; } ;
struct device {int of_node; } ;
typedef int __be32 ;
struct TYPE_3__ {int max_register; } ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int SYS_CFGCTRL_DCC (scalar_t__) ;
 int SYS_CFGCTRL_DEVICE (scalar_t__) ;
 int SYS_CFGCTRL_FUNC (scalar_t__) ;
 int SYS_CFGCTRL_POSITION (scalar_t__) ;
 int SYS_CFGCTRL_SITE (scalar_t__) ;
 scalar_t__ be32_to_cpup (int const*) ;
 int cpu_to_be32 (scalar_t__) ;
 int dev_dbg (struct device*,char*,struct vexpress_syscfg_func*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int kfree (struct vexpress_syscfg_func*) ;
 struct vexpress_syscfg_func* kzalloc (int ,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 struct property* of_find_property (int ,char*,int *) ;
 void* regmap_init (struct device*,int *,struct vexpress_syscfg_func*,TYPE_1__*) ;
 int struct_size (struct vexpress_syscfg_func*,int ,int) ;
 int template ;
 int vexpress_config_get_topo (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 TYPE_1__ vexpress_syscfg_regmap_config ;

__attribute__((used)) static struct regmap *vexpress_syscfg_regmap_init(struct device *dev,
  void *context)
{
 int err;
 struct vexpress_syscfg *syscfg = context;
 struct vexpress_syscfg_func *func;
 struct property *prop;
 const __be32 *val = ((void*)0);
 __be32 energy_quirk[4];
 int num;
 u32 site, position, dcc;
 int i;

 err = vexpress_config_get_topo(dev->of_node, &site,
    &position, &dcc);
 if (err)
  return ERR_PTR(err);

 prop = of_find_property(dev->of_node,
   "arm,vexpress-sysreg,func", ((void*)0));
 if (!prop)
  return ERR_PTR(-EINVAL);

 num = prop->length / sizeof(u32) / 2;
 val = prop->value;





 if (num == 1 && of_device_is_compatible(dev->of_node,
   "arm,vexpress-energy")) {
  num = 2;
  energy_quirk[0] = *val;
  energy_quirk[2] = *val++;
  energy_quirk[1] = *val;
  energy_quirk[3] = cpu_to_be32(be32_to_cpup(val) + 1);
  val = energy_quirk;
 }

 func = kzalloc(struct_size(func, template, num), GFP_KERNEL);
 if (!func)
  return ERR_PTR(-ENOMEM);

 func->syscfg = syscfg;
 func->num_templates = num;

 for (i = 0; i < num; i++) {
  u32 function, device;

  function = be32_to_cpup(val++);
  device = be32_to_cpup(val++);

  dev_dbg(dev, "func %p: %u/%u/%u/%u/%u\n",
    func, site, position, dcc,
    function, device);

  func->template[i] = SYS_CFGCTRL_DCC(dcc);
  func->template[i] |= SYS_CFGCTRL_SITE(site);
  func->template[i] |= SYS_CFGCTRL_POSITION(position);
  func->template[i] |= SYS_CFGCTRL_FUNC(function);
  func->template[i] |= SYS_CFGCTRL_DEVICE(device);
 }

 vexpress_syscfg_regmap_config.max_register = num - 1;

 func->regmap = regmap_init(dev, ((void*)0), func,
   &vexpress_syscfg_regmap_config);

 if (IS_ERR(func->regmap)) {
  void *err = func->regmap;

  kfree(func);
  return err;
 }

 list_add(&func->list, &syscfg->funcs);

 return func->regmap;
}
