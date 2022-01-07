
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {int lock; } ;


 int __stmpe_reg_read (struct stmpe*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int stmpe_reg_read(struct stmpe *stmpe, u8 reg)
{
 int ret;

 mutex_lock(&stmpe->lock);
 ret = __stmpe_reg_read(stmpe, reg);
 mutex_unlock(&stmpe->lock);

 return ret;
}
