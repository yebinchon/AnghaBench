
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct csid_format {scalar_t__ code; } ;


 int WARN (int,char*) ;

__attribute__((used)) static const struct csid_format *csid_get_fmt_entry(
     const struct csid_format *formats,
     unsigned int nformat,
     u32 code)
{
 unsigned int i;

 for (i = 0; i < nformat; i++)
  if (code == formats[i].code)
   return &formats[i];

 WARN(1, "Unknown format\n");

 return &formats[0];
}
