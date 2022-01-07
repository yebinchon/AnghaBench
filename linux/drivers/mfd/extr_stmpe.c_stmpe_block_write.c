
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {int lock; } ;


 int __stmpe_block_write (struct stmpe*,int ,int ,int const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int stmpe_block_write(struct stmpe *stmpe, u8 reg, u8 length,
        const u8 *values)
{
 int ret;

 mutex_lock(&stmpe->lock);
 ret = __stmpe_block_write(stmpe, reg, length, values);
 mutex_unlock(&stmpe->lock);

 return ret;
}
