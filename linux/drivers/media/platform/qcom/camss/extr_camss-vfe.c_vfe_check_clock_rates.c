
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int entity; } ;
struct vfe_line {TYPE_2__* fmt; int nformats; int formats; TYPE_1__ subdev; } ;
struct vfe_device {int nclocks; struct vfe_line* line; struct camss_clock* clock; } ;
struct camss_clock {int clk; int name; } ;
struct TYPE_4__ {int code; } ;


 int EBUSY ;
 int MSM_VFE_LINE_NUM ;
 size_t MSM_VFE_PAD_SINK ;
 int VFE_LINE_PIX ;
 int VFE_LINE_RDI0 ;
 int camss_add_clock_margin (int*) ;
 int camss_get_pixel_clock (int *,int*) ;
 unsigned long clk_get_rate (int ) ;
 int strcmp (int ,char*) ;
 int vfe_get_bpp (int ,int ,int ) ;

__attribute__((used)) static int vfe_check_clock_rates(struct vfe_device *vfe)
{
 u32 pixel_clock[MSM_VFE_LINE_NUM];
 int i, j;
 int ret;

 for (i = VFE_LINE_RDI0; i <= VFE_LINE_PIX; i++) {
  ret = camss_get_pixel_clock(&vfe->line[i].subdev.entity,
         &pixel_clock[i]);
  if (ret)
   pixel_clock[i] = 0;
 }

 for (i = 0; i < vfe->nclocks; i++) {
  struct camss_clock *clock = &vfe->clock[i];

  if (!strcmp(clock->name, "vfe0") ||
      !strcmp(clock->name, "vfe1")) {
   u64 min_rate = 0;
   unsigned long rate;

   for (j = VFE_LINE_RDI0; j <= VFE_LINE_PIX; j++) {
    u32 tmp;
    u8 bpp;

    if (j == VFE_LINE_PIX) {
     tmp = pixel_clock[j];
    } else {
     struct vfe_line *l = &vfe->line[j];

     bpp = vfe_get_bpp(l->formats,
      l->nformats,
      l->fmt[MSM_VFE_PAD_SINK].code);
     tmp = pixel_clock[j] * bpp / 64;
    }

    if (min_rate < tmp)
     min_rate = tmp;
   }

   camss_add_clock_margin(&min_rate);

   rate = clk_get_rate(clock->clk);
   if (rate < min_rate)
    return -EBUSY;
  }
 }

 return 0;
}
