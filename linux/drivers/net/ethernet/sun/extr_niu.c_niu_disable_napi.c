
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu {int num_ldg; TYPE_1__* ldg; } ;
struct TYPE_2__ {int napi; } ;


 int napi_disable (int *) ;

__attribute__((used)) static void niu_disable_napi(struct niu *np)
{
 int i;

 for (i = 0; i < np->num_ldg; i++)
  napi_disable(&np->ldg[i].napi);
}
