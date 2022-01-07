
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_bp {int free_buf_cb; int seed_cb; int config_count; int * percpu_count; int bpid; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct dpaa_bp* ERR_PTR (int ) ;
 int FSL_DPAA_BPID_INV ;
 int FSL_DPAA_ETH_MAX_BUF_COUNT ;
 int GFP_KERNEL ;
 int * devm_alloc_percpu (struct device*,int ) ;
 struct dpaa_bp* devm_kzalloc (struct device*,int,int ) ;
 int dpaa_bp_free_pf ;
 int dpaa_bp_seed ;

__attribute__((used)) static struct dpaa_bp *dpaa_bp_alloc(struct device *dev)
{
 struct dpaa_bp *dpaa_bp;

 dpaa_bp = devm_kzalloc(dev, sizeof(*dpaa_bp), GFP_KERNEL);
 if (!dpaa_bp)
  return ERR_PTR(-ENOMEM);

 dpaa_bp->bpid = FSL_DPAA_BPID_INV;
 dpaa_bp->percpu_count = devm_alloc_percpu(dev, *dpaa_bp->percpu_count);
 if (!dpaa_bp->percpu_count)
  return ERR_PTR(-ENOMEM);

 dpaa_bp->config_count = FSL_DPAA_ETH_MAX_BUF_COUNT;

 dpaa_bp->seed_cb = dpaa_bp_seed;
 dpaa_bp->free_buf_cb = dpaa_bp_free_pf;

 return dpaa_bp;
}
