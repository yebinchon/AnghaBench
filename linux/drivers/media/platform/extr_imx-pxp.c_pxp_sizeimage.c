
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxp_fmt {int depth; } ;



__attribute__((used)) static inline u32 pxp_sizeimage(struct pxp_fmt *fmt, u32 width, u32 height)
{
 return (fmt->depth * width * height) >> 3;
}
