
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_bm {int dummy; } ;


 int MVNETA_BM_CONFIG_REG ;
 int mvneta_bm_read (struct mvneta_bm*,int ) ;
 int mvneta_bm_write (struct mvneta_bm*,int ,int ) ;

__attribute__((used)) static inline void mvneta_bm_config_set(struct mvneta_bm *priv, u32 mask)
{
 u32 val;

 val = mvneta_bm_read(priv, MVNETA_BM_CONFIG_REG);
 val |= mask;
 mvneta_bm_write(priv, MVNETA_BM_CONFIG_REG, val);
}
