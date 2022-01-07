
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_fmt {int fmt; } ;



__attribute__((used)) static int fdp1_fmt_is_rgb(const struct fdp1_fmt *fmt)
{
 return fmt->fmt <= 0x1b;
}
