
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_bm {int dummy; } ;


 int MVNETA_BM_POOL_BASE_REG (int) ;
 int MVNETA_BM_POOL_ENABLE_MASK ;
 int mvneta_bm_read (struct mvneta_bm*,int ) ;
 int mvneta_bm_write (struct mvneta_bm*,int ,int ) ;

__attribute__((used)) static void mvneta_bm_pool_disable(struct mvneta_bm *priv, int pool_id)
{
 u32 val;

 val = mvneta_bm_read(priv, MVNETA_BM_POOL_BASE_REG(pool_id));
 val &= ~MVNETA_BM_POOL_ENABLE_MASK;
 mvneta_bm_write(priv, MVNETA_BM_POOL_BASE_REG(pool_id), val);
}
