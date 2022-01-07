
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_fh {int dummy; } ;
struct tm6000_core {scalar_t__ is_res_read; struct tm6000_fh* resources; } ;



__attribute__((used)) static bool is_res_read(struct tm6000_core *dev, struct tm6000_fh *fh)
{

 if (dev->resources == fh && dev->is_res_read)
  return 1;

 return 0;
}
