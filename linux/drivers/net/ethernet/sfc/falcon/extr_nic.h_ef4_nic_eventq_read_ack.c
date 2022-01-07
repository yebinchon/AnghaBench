
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_channel {TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* ev_read_ack ) (struct ef4_channel*) ;} ;


 int stub1 (struct ef4_channel*) ;

__attribute__((used)) static inline void ef4_nic_eventq_read_ack(struct ef4_channel *channel)
{
 channel->efx->type->ev_read_ack(channel);
}
