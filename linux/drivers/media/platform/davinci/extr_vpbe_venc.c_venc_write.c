
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venc_state {scalar_t__ venc_base; } ;
struct v4l2_subdev {int dummy; } ;


 struct venc_state* to_state (struct v4l2_subdev*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 venc_write(struct v4l2_subdev *sd, u32 offset, u32 val)
{
 struct venc_state *venc = to_state(sd);

 writel(val, (venc->venc_base + offset));

 return val;
}
