
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vsp1_dl_body {int dummy; } ;
struct vsp1_brx {scalar_t__ base; } ;


 int vsp1_dl_body_write (struct vsp1_dl_body*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vsp1_brx_write(struct vsp1_brx *brx,
      struct vsp1_dl_body *dlb, u32 reg, u32 data)
{
 vsp1_dl_body_write(dlb, brx->base + reg, data);
}
