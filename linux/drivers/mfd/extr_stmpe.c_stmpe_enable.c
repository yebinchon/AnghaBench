
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int lock; } ;


 int __stmpe_enable (struct stmpe*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int stmpe_enable(struct stmpe *stmpe, unsigned int blocks)
{
 int ret;

 mutex_lock(&stmpe->lock);
 ret = __stmpe_enable(stmpe, blocks);
 mutex_unlock(&stmpe->lock);

 return ret;
}
