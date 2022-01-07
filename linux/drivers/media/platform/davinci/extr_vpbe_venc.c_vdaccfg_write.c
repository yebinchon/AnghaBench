
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venc_state {int vdaccfg_reg; } ;
struct v4l2_subdev {int dummy; } ;


 int readl (int ) ;
 struct venc_state* to_state (struct v4l2_subdev*) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline u32 vdaccfg_write(struct v4l2_subdev *sd, u32 val)
{
 struct venc_state *venc = to_state(sd);

 writel(val, venc->vdaccfg_reg);

 val = readl(venc->vdaccfg_reg);

 return val;
}
