
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i40e_channel {TYPE_2__* fwd; } ;
struct TYPE_4__ {TYPE_1__* netdev; } ;
struct TYPE_3__ {int * dev_addr; } ;


 scalar_t__ i40e_is_channel_macvlan (struct i40e_channel*) ;

__attribute__((used)) static inline u8 *i40e_channel_mac(struct i40e_channel *ch)
{
 if (i40e_is_channel_macvlan(ch))
  return ch->fwd->netdev->dev_addr;
 else
  return ((void*)0);
}
