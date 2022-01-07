
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_caps {size_t num_fmts; int * fmts; } ;
struct raw_formats {int dummy; } ;


 int memcpy (int *,struct raw_formats const*,unsigned int) ;

__attribute__((used)) static void fill_raw_fmts(struct venus_caps *cap, const void *fmts,
     unsigned int num_fmts)
{
 const struct raw_formats *formats = fmts;

 memcpy(&cap->fmts[cap->num_fmts], formats, num_fmts * sizeof(*formats));
 cap->num_fmts += num_fmts;
}
