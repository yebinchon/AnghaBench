
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int * endpoints; } ;


 unsigned int ADV748X_PORT_MAX ;
 int of_node_put (int ) ;

__attribute__((used)) static void adv748x_dt_cleanup(struct adv748x_state *state)
{
 unsigned int i;

 for (i = 0; i < ADV748X_PORT_MAX; i++)
  of_node_put(state->endpoints[i]);
}
