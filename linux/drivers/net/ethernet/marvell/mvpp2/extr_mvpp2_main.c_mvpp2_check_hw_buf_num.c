
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_bm_pool {int id; } ;
struct mvpp2 {int dummy; } ;


 int MVPP22_BM_POOL_PTRS_NUM_MASK ;
 int MVPP2_BM_BPPI_PTRS_NUM_REG (int ) ;
 int MVPP2_BM_BPPI_PTR_NUM_MASK ;
 int MVPP2_BM_POOL_PTRS_NUM_REG (int ) ;
 int mvpp2_read (struct mvpp2*,int ) ;

__attribute__((used)) static int mvpp2_check_hw_buf_num(struct mvpp2 *priv, struct mvpp2_bm_pool *bm_pool)
{
 int buf_num = 0;

 buf_num += mvpp2_read(priv, MVPP2_BM_POOL_PTRS_NUM_REG(bm_pool->id)) &
        MVPP22_BM_POOL_PTRS_NUM_MASK;
 buf_num += mvpp2_read(priv, MVPP2_BM_BPPI_PTRS_NUM_REG(bm_pool->id)) &
        MVPP2_BM_BPPI_PTR_NUM_MASK;


 if (buf_num)
  buf_num += 1;

 return buf_num;
}
