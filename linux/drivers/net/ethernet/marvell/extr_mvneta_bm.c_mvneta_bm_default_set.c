
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_bm {int dummy; } ;


 int MVNETA_BM_CONFIG_REG ;
 int MVNETA_BM_INTR_CAUSE_REG ;
 int MVNETA_BM_INTR_MASK_REG ;
 int MVNETA_BM_MAX_IN_BURST_SIZE_16BP ;
 int MVNETA_BM_MAX_IN_BURST_SIZE_MASK ;
 int mvneta_bm_read (struct mvneta_bm*,int ) ;
 int mvneta_bm_write (struct mvneta_bm*,int ,int ) ;

__attribute__((used)) static void mvneta_bm_default_set(struct mvneta_bm *priv)
{
 u32 val;


 mvneta_bm_write(priv, MVNETA_BM_INTR_MASK_REG, 0);


 mvneta_bm_write(priv, MVNETA_BM_INTR_CAUSE_REG, 0);


 val = mvneta_bm_read(priv, MVNETA_BM_CONFIG_REG);


 val &= ~MVNETA_BM_MAX_IN_BURST_SIZE_MASK;
 val |= MVNETA_BM_MAX_IN_BURST_SIZE_16BP;
 mvneta_bm_write(priv, MVNETA_BM_CONFIG_REG, val);
}
