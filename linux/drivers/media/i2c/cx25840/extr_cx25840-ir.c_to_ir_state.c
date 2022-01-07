
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx25840_state {struct cx25840_ir_state* ir_state; } ;
struct cx25840_ir_state {int dummy; } ;


 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline struct cx25840_ir_state *to_ir_state(struct v4l2_subdev *sd)
{
 struct cx25840_state *state = to_state(sd);
 return state ? state->ir_state : ((void*)0);
}
