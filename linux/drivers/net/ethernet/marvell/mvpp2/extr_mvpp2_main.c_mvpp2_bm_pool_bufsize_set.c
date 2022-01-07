
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_bm_pool {int buf_size; int id; } ;
struct mvpp2 {int dummy; } ;


 int ALIGN (int,int) ;
 int MVPP2_POOL_BUF_SIZE_OFFSET ;
 int MVPP2_POOL_BUF_SIZE_REG (int ) ;
 int mvpp2_write (struct mvpp2*,int ,int ) ;

__attribute__((used)) static void mvpp2_bm_pool_bufsize_set(struct mvpp2 *priv,
          struct mvpp2_bm_pool *bm_pool,
          int buf_size)
{
 u32 val;

 bm_pool->buf_size = buf_size;

 val = ALIGN(buf_size, 1 << MVPP2_POOL_BUF_SIZE_OFFSET);
 mvpp2_write(priv, MVPP2_POOL_BUF_SIZE_REG(bm_pool->id), val);
}
