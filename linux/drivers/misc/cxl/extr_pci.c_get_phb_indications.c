
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENODEV ;
 scalar_t__ be32_to_cpu (int const) ;
 int indications_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* pnv_pci_get_phb_node (struct pci_dev*) ;

__attribute__((used)) static int get_phb_indications(struct pci_dev *dev, u64 *capiind, u64 *asnind,
          u64 *nbwind)
{
 static u64 nbw, asn, capi = 0;
 struct device_node *np;
 const __be32 *prop;

 mutex_lock(&indications_mutex);
 if (!capi) {
  if (!(np = pnv_pci_get_phb_node(dev))) {
   mutex_unlock(&indications_mutex);
   return -ENODEV;
  }

  prop = of_get_property(np, "ibm,phb-indications", ((void*)0));
  if (!prop) {
   nbw = 0x0300UL;
   asn = 0x0400UL;
   capi = 0x0200UL;
  } else {
   nbw = (u64)be32_to_cpu(prop[2]);
   asn = (u64)be32_to_cpu(prop[1]);
   capi = (u64)be32_to_cpu(prop[0]);
  }
  of_node_put(np);
 }
 *capiind = capi;
 *asnind = asn;
 *nbwind = nbw;
 mutex_unlock(&indications_mutex);
 return 0;
}
