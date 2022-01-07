
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxp_fmt {int fourcc; int depth; } ;
__attribute__((used)) static inline u32 pxp_bytesperline(struct pxp_fmt *fmt, u32 width)
{
 switch (fmt->fourcc) {
 case 129:
 case 133:
 case 131:
 case 128:
 case 132:
 case 130:
  return width;
 default:
  return (width * fmt->depth) >> 3;
 }
}
