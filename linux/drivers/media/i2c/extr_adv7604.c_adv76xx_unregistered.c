
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {int cec_adap; } ;


 int cec_unregister_adapter (int ) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void adv76xx_unregistered(struct v4l2_subdev *sd)
{
 struct adv76xx_state *state = to_state(sd);

 cec_unregister_adapter(state->cec_adap);
}
