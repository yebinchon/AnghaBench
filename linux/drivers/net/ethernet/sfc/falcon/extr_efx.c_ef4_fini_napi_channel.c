
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int * napi_dev; int napi_str; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void ef4_fini_napi_channel(struct ef4_channel *channel)
{
 if (channel->napi_dev)
  netif_napi_del(&channel->napi_str);

 channel->napi_dev = ((void*)0);
}
