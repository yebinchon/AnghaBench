
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppp_channel {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int net_ns; } ;


 TYPE_2__* current ;
 int ppp_register_net_channel (int ,struct ppp_channel*) ;

int ppp_register_channel(struct ppp_channel *chan)
{
 return ppp_register_net_channel(current->nsproxy->net_ns, chan);
}
