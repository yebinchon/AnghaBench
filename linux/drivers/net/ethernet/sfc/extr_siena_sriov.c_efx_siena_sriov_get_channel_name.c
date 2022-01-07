
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_channel {TYPE_1__* efx; } ;
struct TYPE_2__ {char* name; } ;


 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static void
efx_siena_sriov_get_channel_name(struct efx_channel *channel,
     char *buf, size_t len)
{
 snprintf(buf, len, "%s-iov", channel->efx->name);
}
