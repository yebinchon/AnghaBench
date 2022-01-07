
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv76xx_state {int * i2c_clients; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static void adv76xx_unregister_clients(struct adv76xx_state *state)
{
 unsigned int i;

 for (i = 1; i < ARRAY_SIZE(state->i2c_clients); ++i)
  i2c_unregister_device(state->i2c_clients[i]);
}
