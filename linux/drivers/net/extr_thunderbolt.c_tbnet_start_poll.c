
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbnet {int napi; } ;


 int napi_schedule (int *) ;

__attribute__((used)) static void tbnet_start_poll(void *data)
{
 struct tbnet *net = data;

 napi_schedule(&net->napi);
}
