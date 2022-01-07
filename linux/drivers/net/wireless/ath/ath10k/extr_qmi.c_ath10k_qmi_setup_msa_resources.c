
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct ath10k_qmi {int msa_va; int msa_pa; int msa_mem_size; struct ath10k* ar; } ;
struct ath10k {struct device* dev; } ;


 int ATH10K_DBG_QMI ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MEMREMAP_WT ;
 int PTR_ERR (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int *,int ) ;
 int ath10k_err (struct ath10k*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int devm_memremap (struct device*,int ,int ,int ) ;
 int dmam_alloc_coherent (struct device*,int ,int *,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ath10k_qmi_setup_msa_resources(struct ath10k_qmi *qmi, u32 msa_size)
{
 struct ath10k *ar = qmi->ar;
 struct device *dev = ar->dev;
 struct device_node *node;
 struct resource r;
 int ret;

 node = of_parse_phandle(dev->of_node, "memory-region", 0);
 if (node) {
  ret = of_address_to_resource(node, 0, &r);
  if (ret) {
   dev_err(dev, "failed to resolve msa fixed region\n");
   return ret;
  }
  of_node_put(node);

  qmi->msa_pa = r.start;
  qmi->msa_mem_size = resource_size(&r);
  qmi->msa_va = devm_memremap(dev, qmi->msa_pa, qmi->msa_mem_size,
         MEMREMAP_WT);
  if (IS_ERR(qmi->msa_va)) {
   dev_err(dev, "failed to map memory region: %pa\n", &r.start);
   return PTR_ERR(qmi->msa_va);
  }
 } else {
  qmi->msa_va = dmam_alloc_coherent(dev, msa_size,
        &qmi->msa_pa, GFP_KERNEL);
  if (!qmi->msa_va) {
   ath10k_err(ar, "failed to allocate dma memory for msa region\n");
   return -ENOMEM;
  }
  qmi->msa_mem_size = msa_size;
 }

 ath10k_dbg(ar, ATH10K_DBG_QMI, "msa pa: %pad , msa va: 0x%p\n",
     &qmi->msa_pa,
     qmi->msa_va);

 return 0;
}
