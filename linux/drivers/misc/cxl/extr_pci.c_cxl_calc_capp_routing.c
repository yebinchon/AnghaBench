
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENODEV ;
 int be32_to_cpup (int const*) ;
 int get_capp_unit_id (struct device_node*,int ) ;
 int get_phb_index (struct device_node*,int *) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* pnv_pci_get_phb_node (struct pci_dev*) ;
 int pr_err (char*,...) ;

int cxl_calc_capp_routing(struct pci_dev *dev, u64 *chipid,
        u32 *phb_index, u64 *capp_unit_id)
{
 int rc;
 struct device_node *np;
 const __be32 *prop;

 if (!(np = pnv_pci_get_phb_node(dev)))
  return -ENODEV;

 while (np && !(prop = of_get_property(np, "ibm,chip-id", ((void*)0))))
  np = of_get_next_parent(np);
 if (!np)
  return -ENODEV;

 *chipid = be32_to_cpup(prop);

 rc = get_phb_index(np, phb_index);
 if (rc) {
  pr_err("cxl: invalid phb index\n");
  return rc;
 }

 *capp_unit_id = get_capp_unit_id(np, *phb_index);
 of_node_put(np);
 if (!*capp_unit_id) {
  pr_err("cxl: invalid capp unit id (phb_index: %d)\n",
         *phb_index);
  return -ENODEV;
 }

 return 0;
}
