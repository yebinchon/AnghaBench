
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int enabled; int napi_str; } ;


 int napi_disable (int *) ;

void ef4_stop_eventq(struct ef4_channel *channel)
{
 if (!channel->enabled)
  return;

 napi_disable(&channel->napi_str);
 channel->enabled = 0;
}
