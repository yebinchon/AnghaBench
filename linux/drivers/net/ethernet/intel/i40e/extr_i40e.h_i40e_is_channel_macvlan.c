
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_channel {int fwd; } ;



__attribute__((used)) static inline bool i40e_is_channel_macvlan(struct i40e_channel *ch)
{
 return !!ch->fwd;
}
