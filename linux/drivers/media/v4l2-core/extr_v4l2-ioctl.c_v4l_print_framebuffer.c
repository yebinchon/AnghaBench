
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pixelformat; int colorspace; int sizeimage; int bytesperline; int height; int width; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; int base; int flags; int capability; } ;


 int pr_cont (char*,int ,int ,int ,int ,int ,int,int,int,int,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_framebuffer(const void *arg, bool write_only)
{
 const struct v4l2_framebuffer *p = arg;

 pr_cont("capability=0x%x, flags=0x%x, base=0x%p, width=%u, height=%u, pixelformat=%c%c%c%c, bytesperline=%u, sizeimage=%u, colorspace=%d\n",
   p->capability, p->flags, p->base,
   p->fmt.width, p->fmt.height,
   (p->fmt.pixelformat & 0xff),
   (p->fmt.pixelformat >> 8) & 0xff,
   (p->fmt.pixelformat >> 16) & 0xff,
   (p->fmt.pixelformat >> 24) & 0xff,
   p->fmt.bytesperline, p->fmt.sizeimage,
   p->fmt.colorspace);
}
