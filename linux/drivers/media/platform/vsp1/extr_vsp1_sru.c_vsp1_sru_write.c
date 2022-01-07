
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_sru {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;


 int vsp1_dl_body_write (struct vsp1_dl_body*,int ,int ) ;

__attribute__((used)) static inline void vsp1_sru_write(struct vsp1_sru *sru,
      struct vsp1_dl_body *dlb, u32 reg, u32 data)
{
 vsp1_dl_body_write(dlb, reg, data);
}
