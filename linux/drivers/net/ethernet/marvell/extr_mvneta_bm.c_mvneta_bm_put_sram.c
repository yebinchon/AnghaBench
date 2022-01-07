
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_bm {int bppi_phys_addr; int bppi_pool; } ;


 int MVNETA_BM_BPPI_SIZE ;
 int gen_pool_free (int ,int ,int ) ;

__attribute__((used)) static void mvneta_bm_put_sram(struct mvneta_bm *priv)
{
 gen_pool_free(priv->bppi_pool, priv->bppi_phys_addr,
        MVNETA_BM_BPPI_SIZE);
}
