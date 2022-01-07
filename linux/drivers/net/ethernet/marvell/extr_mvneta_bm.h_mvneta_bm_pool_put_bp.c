
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_bm_pool {int dummy; } ;
struct mvneta_bm {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static inline void mvneta_bm_pool_put_bp(struct mvneta_bm *priv,
      struct mvneta_bm_pool *bm_pool,
      dma_addr_t buf_phys_addr) {}
