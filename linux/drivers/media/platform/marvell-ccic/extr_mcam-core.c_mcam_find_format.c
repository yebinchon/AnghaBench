
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mcam_format_struct {scalar_t__ pixelformat; } ;


 unsigned int N_MCAM_FMTS ;
 struct mcam_format_struct* mcam_formats ;

__attribute__((used)) static struct mcam_format_struct *mcam_find_format(u32 pixelformat)
{
 unsigned i;

 for (i = 0; i < N_MCAM_FMTS; i++)
  if (mcam_formats[i].pixelformat == pixelformat)
   return mcam_formats + i;

 return mcam_formats;
}
