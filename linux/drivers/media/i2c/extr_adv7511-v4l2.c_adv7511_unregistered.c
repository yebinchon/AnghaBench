
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7511_state {int cec_adap; } ;


 int cec_unregister_adapter (int ) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;

__attribute__((used)) static void adv7511_unregistered(struct v4l2_subdev *sd)
{
 struct adv7511_state *state = get_adv7511_state(sd);

 cec_unregister_adapter(state->cec_adap);
}
