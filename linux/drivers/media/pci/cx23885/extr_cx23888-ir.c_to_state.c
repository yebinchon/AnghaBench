
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int dummy; } ;


 struct cx23888_ir_state* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline struct cx23888_ir_state *to_state(struct v4l2_subdev *sd)
{
 return v4l2_get_subdevdata(sd);
}
