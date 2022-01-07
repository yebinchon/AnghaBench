
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;


 int napi_schedule (struct napi_struct*) ;

__attribute__((used)) static void napi_schedule_wrapper(void *param)
{
 struct napi_struct *napi = param;

 napi_schedule(napi);
}
