
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct fimc_fmt {size_t colplanes; scalar_t__* depth; } ;



__attribute__((used)) static inline u32 fimc_get_format_depth(struct fimc_fmt *ff)
{
 u32 i, depth = 0;

 if (ff != ((void*)0))
  for (i = 0; i < ff->colplanes; i++)
   depth += ff->depth[i];
 return depth;
}
