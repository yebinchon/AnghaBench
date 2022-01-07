
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct vfe_format {scalar_t__ code; int bpp; } ;


 int WARN (int,char*) ;

__attribute__((used)) static u8 vfe_get_bpp(const struct vfe_format *formats,
        unsigned int nformats, u32 code)
{
 unsigned int i;

 for (i = 0; i < nformats; i++)
  if (code == formats[i].code)
   return formats[i].bpp;

 WARN(1, "Unknown format\n");

 return formats[0].bpp;
}
