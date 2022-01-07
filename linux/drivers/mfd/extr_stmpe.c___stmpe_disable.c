
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe {TYPE_1__* variant; } ;
struct TYPE_2__ {int (* enable ) (struct stmpe*,unsigned int,int) ;} ;


 int stub1 (struct stmpe*,unsigned int,int) ;

__attribute__((used)) static int __stmpe_disable(struct stmpe *stmpe, unsigned int blocks)
{
 return stmpe->variant->enable(stmpe, blocks, 0);
}
