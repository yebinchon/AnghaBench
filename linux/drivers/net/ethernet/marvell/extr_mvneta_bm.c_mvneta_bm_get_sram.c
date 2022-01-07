
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_bm {int bppi_virt_addr; int bppi_phys_addr; int bppi_pool; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int MVNETA_BM_BPPI_SIZE ;
 int gen_pool_dma_alloc (int ,int ,int *) ;
 int of_gen_pool_get (struct device_node*,char*,int ) ;

__attribute__((used)) static int mvneta_bm_get_sram(struct device_node *dn,
         struct mvneta_bm *priv)
{
 priv->bppi_pool = of_gen_pool_get(dn, "internal-mem", 0);
 if (!priv->bppi_pool)
  return -ENOMEM;

 priv->bppi_virt_addr = gen_pool_dma_alloc(priv->bppi_pool,
        MVNETA_BM_BPPI_SIZE,
        &priv->bppi_phys_addr);
 if (!priv->bppi_virt_addr)
  return -ENOMEM;

 return 0;
}
