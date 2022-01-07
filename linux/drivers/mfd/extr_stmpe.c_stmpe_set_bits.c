
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {int lock; } ;


 int __stmpe_set_bits (struct stmpe*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int stmpe_set_bits(struct stmpe *stmpe, u8 reg, u8 mask, u8 val)
{
 int ret;

 mutex_lock(&stmpe->lock);
 ret = __stmpe_set_bits(stmpe, reg, mask, val);
 mutex_unlock(&stmpe->lock);

 return ret;
}
